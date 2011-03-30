//
//  ChatAppDelegate.m
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ChatAppDelegate.h"
#import "ChatViewController.h"
#import <Foundation/NSNetServices.h>
#import "TCPServer.h"

@interface ChatAppDelegate ()
- (BOOL)searchForServicesOfType:(NSString *)type inDomain:(NSString *)domain;
- (void) showAlert:(NSString *)title;
@end

@implementation ChatAppDelegate

@synthesize window=_window;
@synthesize service;
@synthesize domain;
@synthesize username;
@synthesize navigationController=_navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    self.window.rootViewController = self.navigationController;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *settingsBundle = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    NSDictionary *settings = [NSDictionary dictionaryWithContentsOfFile:[settingsBundle stringByAppendingPathComponent:@"Root.plist"]];
    
    NSArray *preferences = [settings objectForKey:@"PreferenceSpecifiers"];
    NSMutableDictionary *defaultsToRegister = [[NSMutableDictionary alloc] initWithCapacity:[preferences count]];
    
    for (NSDictionary *prefSpecification in preferences) {
        NSString *key = [prefSpecification objectForKey:@"Key"];
        
        if (key) {
            if ([defaults objectForKey:key] == nil) {
                id objectToSet = [prefSpecification objectForKey:@"DefaultValue"];
                [defaultsToRegister setObject:objectToSet forKey:key];
            }
        }
    }
    
    [defaults registerDefaults:defaultsToRegister];
    [defaultsToRegister release];
    [defaults synchronize];
    
    self.service = [defaults stringForKey:@"service_preference"];
    self.domain = [defaults stringForKey:@"domain_preference"];
    self.username = [defaults stringForKey:@"username_preference"];

    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{    
    // Start the bonjour lookup
    [self searchForServicesOfType:[TCPServer bonjourTypeFromIdentifier:self.service]
                         inDomain:self.domain];
    [self startServer];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}


- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

- (void) showAlert:(NSString *)title
{
	UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:@"Check your networking configuration." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	[alertView show];
	[alertView release];
}


#pragma mark - Global network services

- (BOOL)searchForServicesOfType:(NSString *)type inDomain:(NSString *)localDomain {
	//[self stopCurrentResolve];
	//[self.netServiceBrowser stop];
    
	netServiceBrowser = [[NSNetServiceBrowser alloc] init];
	if(!netServiceBrowser) {
        // The NSNetServiceBrowser couldn't be allocated and initialized.
		return NO;
	}
    
	netServiceBrowser.delegate = ((id<NSNetServiceBrowserDelegate>) contactsController);
	[netServiceBrowser searchForServicesOfType:type inDomain:localDomain];
    
	return YES;
}

- (BOOL)startServer{
    return [self startServerOnDomain:self.domain
                              ofType:self.service
                            withName:self.username];
}

- (BOOL)startServerOnDomain:(NSString *)localDomain 
                     ofType:(NSString*)type 
                   withName:(NSString *)name
{
    // Make sure to stop any running server instance
    [self stopServer];
    
    // Create the new server and register the delegate
    server = [TCPServer new];
	[server setDelegate:self];
    
    // Start the server by checking for errors
	NSError *error = nil;
	if(server == nil || ![server start:&error]) {
		if (error == nil) {
			NSLog(@"Failed creating server: Server instance is nil");
		} else {
            NSLog(@"Failed creating server: %@", error);
		}
		[self showAlert:@"Failed creating server"];
		return NO;
	}
	
    // Advertise the server as a bonjour service
    NSString* serviceType = [TCPServer bonjourTypeFromIdentifier:type];
	if(![server enableBonjourWithDomain:localDomain
                    applicationProtocol:serviceType
                                   name:name]) {
		[self showAlert:@"Failed advertising server"];
		return NO;
	}
    NSLog(@"Advertising server as %@.%@%@", localDomain, serviceType, name);
    
    return YES;
}

- (BOOL)stopServer
{
    if (server) {
        BOOL ret = [server stop];
        [server release];
        server = nil;
        return ret;
    }
    return YES;
}

- (void) serverDidEnableBonjour:(TCPServer*)server withName:(NSString*)name
{
    
}

- (void) server:(TCPServer*)server didNotEnableBonjour:(NSDictionary *)errorDict
{
    
}

- (void) didAcceptConnectionForServer:(TCPServer*)server inputStream:(NSInputStream *)istr outputStream:(NSOutputStream *)ostr
{
    NSLog(@"Client connected");
    
    _ostr = [ostr retain];
    _istr = [istr retain];
    
    [istr setDelegate:self];
    [istr scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [istr open];
    
    [ostr scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [ostr open];
}

@end

@implementation ChatAppDelegate (NSStreamDelegate)

- (void) stream:(NSStream *)stream handleEvent:(NSStreamEvent)eventCode
{
    if (eventCode == NSStreamEventHasBytesAvailable) {   
        uint8_t buf[1024];
        unsigned int len = 0;
        len = [(NSInputStream *)stream read:buf maxLength:1024];
        if (len) {
            NSString *name = [[[NSString alloc] initWithBytes:buf length:len encoding:NSUTF8StringEncoding] autorelease];
            
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"New chat request" message:name delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            [alertView show];
            [alertView release];
            
            ChatViewController *chatViewController = [[ChatViewController alloc] initWithInputStream:_istr outputStream:_ostr name:name];
            chatViewController.myName = self.username;
            [self.navigationController pushViewController:chatViewController animated:YES];
            [chatViewController release];
        }
	}
}

@end