//
//  ChatAppDelegate.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


//UIActionSheetDelegate, BrowserViewControllerDelegate, NSStreamDelegate

#import <UIKit/UIKit.h>
#import "TCPServer.h"

@interface ChatAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
