//
//  ChatAppDelegate.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCPServer.h"

@class ContactsViewController;

@interface ChatAppDelegate : NSObject <UIApplicationDelegate, TCPServerDelegate, NSStreamDelegate> {
    IBOutlet ContactsViewController *contactsController;
    NSNetServiceBrowser *netServiceBrowser;
    TCPServer * server;

@private
    NSOutputStream *_ostr;
    NSInputStream *_istr;
    
}

- (BOOL)stopServer;
- (BOOL)startServer;
- (BOOL)startServerOnDomain:(NSString *)domain ofType:(NSString*)type withName:(NSString *)name;

@property (retain) NSString *service;
@property (retain) NSString *domain;
@property (retain) NSString *username;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
