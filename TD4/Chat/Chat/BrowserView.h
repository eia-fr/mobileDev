//
//  BrowserView.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/NSNetServices.h>

@class FirstViewController;

@interface BrowserView : UITableViewController <NSNetServiceDelegate, NSNetServiceBrowserDelegate> {
    NSMutableArray *services;
    NSNetServiceBrowser *netServiceBrowser;
    FirstViewController *controller;
    NSNetService *currentResolve;
    NSTimer *timer;
}

@property (nonatomic, retain) NSMutableArray *services;
@property (nonatomic, retain) FirstViewController *controller;
@property (nonatomic, retain) NSNetServiceBrowser *netServiceBrowser;
@property (nonatomic, retain, readwrite) NSNetService *currentResolve;
@property (nonatomic, retain, readwrite) NSTimer *timer;

- (BOOL)searchForServicesOfType:(NSString *)type inDomain:(NSString *)domain;

@end
