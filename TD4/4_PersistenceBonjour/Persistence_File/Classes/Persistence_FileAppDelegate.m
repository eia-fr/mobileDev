//
//  Persistence_FileAppDelegate.m
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright Stéphane Pierroz 2010. All rights reserved.
//

#import "Persistence_FileAppDelegate.h"
#import "Persistence_FileViewController.h"

@implementation Persistence_FileAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

    return YES;
}


- (void)dealloc 
{
    [viewController release];
    [window release];
	
    [super dealloc];
}


@end
