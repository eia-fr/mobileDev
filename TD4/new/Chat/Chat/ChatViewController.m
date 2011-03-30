//
//  ChatViewController.m
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ChatViewController.h"
#import <QuartzCore/QuartzCore.h>

#define CELL_CONTENT_WIDTH 320.0f
#define CELL_CONTENT_MARGIN 8.0f

@implementation ChatLogEntry

@synthesize entry;
@synthesize received;

- (id)initWithEntry:(NSString *)entryText Received:(BOOL)wasReceived
{
    self = [super init];
    if (self) {
        entry = [entryText retain];
        received = wasReceived;
    }
    return self; 
}

@end


@interface ChatViewController ()
@property (readonly) NSMutableArray *chatlog;
- (BOOL)send:(NSString *)message;
@end


@implementation ChatViewController

@synthesize chatlog = _chatlog;
@synthesize myName;


- (id)initWithService:(NSNetService *)service {
    self = [super initWithNibName:@"ChatView" bundle:nil];
    if (self) {
        self.title = [service name];
        _contact = [service name];     
        _chatlog = [[NSMutableArray alloc] init];
        
        if (![service getInputStream:&_inStream outputStream:&_outStream]) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Failed connecting to server!"
                                                                message:nil 
                                                               delegate:self
                                                      cancelButtonTitle:nil
                                                      otherButtonTitles:@"OK", nil];
			[alertView show];
			[alertView release];
        } else {
            [_inStream retain];
            _inStream.delegate = self;
            [_inStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            [_inStream open];
            
            [_outStream retain];
            _outStream.delegate = self;
            [_outStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            [_outStream open];
        }
        _nameSent = NO;
    }
    return self; 
}

- (id)initWithInputStream:(NSInputStream *)istr outputStream:(NSOutputStream *)ostr name:(NSString *)name {
    self = [super initWithNibName:@"ChatView" bundle:nil];
    if (self) {
        self.title = name;
        _contact = name;     
        _chatlog = [[NSMutableArray alloc] init];
        
        _inReady = YES;
        _outReady = YES;
        _inStream = [istr retain];
        _outStream = [ostr retain];
        _inStream.delegate = self;
        _outStream.delegate = self;
        _nameSent = YES;
    }
    return self; 
}


- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    input.superview.layer.borderColor = [UIColor lightGrayColor].CGColor;
    input.superview.layer.borderWidth = 1.0f;
    [input becomeFirstResponder];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark - Table view delegate (and data source)

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.chatlog count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *text = [[self.chatlog objectAtIndex:indexPath.row] entry];
    
    CGSize constraint = CGSizeMake(CELL_CONTENT_WIDTH - (CELL_CONTENT_MARGIN * 2), 20000.0f);
    
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:13] constrainedToSize:constraint lineBreakMode:UILineBreakModeWordWrap];
    
    CGFloat height = MAX(size.height, 20.0f);
    
    return height + (CELL_CONTENT_MARGIN * 2);  
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier;
    
    ChatLogEntry * entry = [self.chatlog objectAtIndex:indexPath.row];
    
    if (!entry.received) {
        CellIdentifier = @"CellLeft";
    } else {
        CellIdentifier = @"CellRight";
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.textLabel.textAlignment = (entry.received ? UITextAlignmentRight : UITextAlignmentLeft);
        cell.textLabel.font = [UIFont systemFontOfSize:13];
        cell.textLabel.lineBreakMode = UILineBreakModeWordWrap;
        cell.textLabel.numberOfLines = 0;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = entry.entry;
    
    return cell;
}

- (BOOL)send:(NSString *)message
{
    const uint8_t *rawString=(const uint8_t *)[message UTF8String];
    int length = [message lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    
    if (_outStream && [_outStream hasSpaceAvailable]) {
        if([_outStream write:rawString maxLength:length] == -1) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Failed sending message!" message:nil  delegate:self cancelButtonTitle:nil otherButtonTitles:@"Discard", nil];
			[alertView show];
			[alertView release];
            return NO;
        }
    }
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{    
    if (!_outReady) {
        NSLog(@"Output stream not yet ready");
        return NO;
    }
    
    NSString *message = [textField text];
    
    if ([[message stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        return NO;
    }
    
    [self send:message];
    
    ChatLogEntry *entry = [[ChatLogEntry alloc] initWithEntry:message Received:NO];
    [self.chatlog addObject:entry];
    [entry release];
    [table reloadData];
    
    NSIndexPath* ipath = [NSIndexPath indexPathForRow: [self.chatlog count]-1 inSection: 0];
    [table scrollToRowAtIndexPath: ipath atScrollPosition: UITableViewScrollPositionTop animated: YES];
    
    [textField setText:@""];
    
    return YES;
}

@end

#pragma mark -
@implementation ChatViewController (NSStreamDelegate)

- (void) stream:(NSStream *)stream handleEvent:(NSStreamEvent)eventCode
{
	UIAlertView *alertView;
	switch(eventCode) {
		case NSStreamEventOpenCompleted:
		{	
			if (stream == _inStream) {
                _inReady = YES;
            } else {
                _outReady = YES;
            }
            
			break;
		}
        case NSStreamEventHasSpaceAvailable:
        {
            if (!_nameSent && stream == _outStream) {
                [self send:self.myName];
                _nameSent = YES;
            }
            break;
        }
		case NSStreamEventHasBytesAvailable:
		{
            uint8_t buf[1024];
            unsigned int len = 0;
            len = [(NSInputStream *)stream read:buf maxLength:1024];
            if (len) {
                NSString *message = [[[NSString alloc] initWithBytes:buf length:len encoding:NSUTF8StringEncoding] autorelease];
                [self.chatlog addObject:[[ChatLogEntry alloc] initWithEntry:message Received:YES]];
                [table reloadData];
                
                NSIndexPath* ipath = [NSIndexPath indexPathForRow: [self.chatlog count]-1 inSection: 0];
                [table scrollToRowAtIndexPath: ipath atScrollPosition: UITableViewScrollPositionTop animated: YES];
            } else {
                NSLog(@"no buffer!");
            }

			break;
		}
		case NSStreamEventErrorOccurred:
		{
            NSLog(@"Error %@", [stream streamError]);
            
			alertView = [[UIAlertView alloc] initWithTitle:@"Stream error!" message:nil  delegate:self cancelButtonTitle:nil otherButtonTitles:@"Discard", nil];
			[alertView show];
			[alertView release];
            
			break;
		}
			
		case NSStreamEventEndEncountered:
		{			
            NSLog(@"Closed");
			alertView = [[UIAlertView alloc] initWithTitle:@"Peer Disconnected!" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"Continue", nil];
			[alertView show];
			[alertView release];
            
			break;
		}
	}
}

@end