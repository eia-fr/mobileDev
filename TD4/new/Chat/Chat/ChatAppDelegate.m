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
- (BOOL)startServer;
- (void) showAlert:(NSString *)title;
@end

@implementation ChatAppDelegate

@synthesize window=_window;

@synthesize navigationController=_navigationController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.
    self.window.rootViewController = self.navigationController;
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
    [self searchForServicesOfType:[TCPServer bonjourTypeFromIdentifier:@"i3chat"] inDomain:@"local"];
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

- (BOOL)searchForServicesOfType:(NSString *)type inDomain:(NSString *)domain {
	//[self stopCurrentResolve];
	//[self.netServiceBrowser stop];
    
	netServiceBrowser = [[NSNetServiceBrowser alloc] init];
	if(!netServiceBrowser) {
        // The NSNetServiceBrowser couldn't be allocated and initialized.
		return NO;
	}
    
	netServiceBrowser.delegate = ((id<NSNetServiceBrowserDelegate>) contactsController);
	[netServiceBrowser searchForServicesOfType:type inDomain:domain];
    
	return YES;
}

- (BOOL)startServer
{
    server = [TCPServer new];
	[server setDelegate:self];
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
	
	if(![server enableBonjourWithDomain:@"local" applicationProtocol:[TCPServer bonjourTypeFromIdentifier:@"i3chat"] name:nil]) {
		[self showAlert:@"Failed advertising server"];
		return NO;
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
    [istr retain];
    [ostr retain];
    [istr setDelegate:self];
    [istr scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [ostr scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [istr open];
    [ostr open];
    _ostr = ostr;
    _istr = istr;
}

@end

@implementation ChatAppDelegate (NSStreamDelegate)

- (void) stream:(NSStream *)stream handleEvent:(NSStreamEvent)eventCode
{
    switch(eventCode) {
		case NSStreamEventHasBytesAvailable:
		{   
            uint8_t buf[1024];
            unsigned int len = 0;
            len = [(NSInputStream *)stream read:buf maxLength:1024];
            if (len) {
                NSString *name = [[[NSString alloc] initWithBytes:buf length:len encoding:NSUTF8StringEncoding] autorelease];
                
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"New chat request" message:name delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [alertView show];
                [alertView release];
                
                ChatViewController *chatViewController = [[ChatViewController alloc] initWithInputStream:_istr outputStream:_ostr name:name];
                [self.navigationController pushViewController:chatViewController animated:YES];
                [chatViewController release];
            }
            
			break;
		}
	}
}

@end