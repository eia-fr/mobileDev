//
//  ChatViewController.h
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatLogEntry : NSObject {
@private
    NSString *entry;
    BOOL received;
}

@property (readonly) NSString * entry;
@property (readonly) BOOL received;

- (id)initWithEntry:(NSString *)entry Received:(BOOL)received;

@end


@interface ChatViewController : UIViewController <UITextFieldDelegate, NSStreamDelegate> {

    IBOutlet UITableView *table;
    IBOutlet UITextField *input;
    
@private
    NSString *_contact;
    NSMutableArray *_chatlog;
    NSInputStream		*_inStream;
	NSOutputStream		*_outStream;
    BOOL _inReady;
    BOOL _nameSent;
	BOOL _outReady;
}

- (id)initWithService:(NSNetService *)service;
- (id)initWithInputStream:(NSInputStream *)istr outputStream:(NSOutputStream *)ostr name:(NSString *)name;

@end
