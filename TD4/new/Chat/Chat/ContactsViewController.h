//
//  RootViewController.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/NSNetServices.h>
#import "IASKAppSettingsViewController.h"

@class ChatAppDelegate;

@interface ContactsViewController : UITableViewController <IASKSettingsDelegate, NSNetServiceDelegate, NSNetServiceBrowserDelegate> {

@private
    NSNetService *_currentResolve;
    NSMutableArray *_contacts;
    NSTimer *_timer;
    BOOL _needsActivityIndicator;
    IASKAppSettingsViewController *settingsViewController;
}

@property (retain) IBOutlet ChatAppDelegate * applicationDelegate;
@property (nonatomic, retain) IASKAppSettingsViewController *settingsViewController;

- (IBAction) showSettingsView:(id)button;


@end
