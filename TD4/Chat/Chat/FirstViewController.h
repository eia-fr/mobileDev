//
//  FirstViewController.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/17/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TCPServer.h"
#import "BrowserView.h"

@interface FirstViewController : UIViewController <TCPServerDelegate> {
    TCPServer			*_server;
    NSInputStream		*_inStream;
	NSOutputStream		*_outStream;
	BOOL				_inReady;
	BOOL				_outReady;
    IBOutlet UILabel    *statusLabel;
    IBOutlet BrowserView         *bvc;
}

@property (retain) BrowserView *bvc;

- (void) updateStatus:(NSString *)text;


@end
