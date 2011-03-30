//
//  RootViewController.m
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ContactsViewController.h"
#import "ChatViewController.h"
#import "IASKAppSettingsViewController.h"
#import "ChatAppDelegate.h"

@interface ContactsViewController()

@property (readonly) NSMutableArray *contacts;
@property (nonatomic, retain, readwrite) NSNetService *currentResolve;
@property (nonatomic, retain, readwrite) NSTimer *timer;
@property (nonatomic, assign, readwrite) BOOL needsActivityIndicator;

- (void)stopCurrentResolve;
- (void)sortAndUpdateUI;

@end

@interface NSNetService (ContactsViewControllerAdditions)
- (NSComparisonResult) localizedCaseInsensitiveCompareByName:(NSNetService *)aService;
@end

@implementation NSNetService (ContactsViewControllerAdditions)
- (NSComparisonResult) localizedCaseInsensitiveCompareByName:(NSNetService *)aService {
	return [[self name] localizedCaseInsensitiveCompare:[aService name]];
}
@end


@implementation ContactsViewController

@synthesize currentResolve = _currentResolve;
@synthesize contacts = _contacts;
@synthesize needsActivityIndicator = _needsActivityIndicator;
@synthesize timer = _timer;
@synthesize applicationDelegate;


#pragma mark - Settings view controller dependencies

@synthesize settingsViewController;

- (IASKAppSettingsViewController*)settingsViewController {
	if (!settingsViewController) {
		settingsViewController = [[IASKAppSettingsViewController alloc] initWithNibName:@"IASKAppSettingsView" bundle:nil];
		settingsViewController.delegate = self;
        settingsViewController.showCreditsFooter = NO;
	}
	return settingsViewController;
}

- (void)settingsViewControllerDidEnd:(IASKAppSettingsViewController*)sender {
    [self dismissModalViewControllerAnimated:YES];
    
    // Reconfigure
    self.applicationDelegate.service = [[sender settingsStore] objectForKey:@"service_preference"];
    self.applicationDelegate.username = [[sender settingsStore] objectForKey:@"username_preference"];
    self.applicationDelegate.domain = [[sender settingsStore] objectForKey:@"domain_preference"];
    
    [self.applicationDelegate startServer];
}


#pragma mark - View delegate

- (void)viewDidLoad
{
    _contacts = [[NSMutableArray alloc] init];
    [super viewDidLoad];
}


#pragma mark - Table view delegate (and data source)

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.contacts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    NSNetService *service = [self.contacts objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }

    [[cell textLabel] setText:[service name]];
    
    if (self.needsActivityIndicator && self.currentResolve == service) {
		if (!cell.accessoryView) {
			CGRect frame = CGRectMake(0.0, 0.0, 20.0, 20.0);
			UIActivityIndicatorView* spinner = [[UIActivityIndicatorView alloc] initWithFrame:frame];
			[spinner startAnimating];
			spinner.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
			[spinner sizeToFit];
			spinner.autoresizingMask = (UIViewAutoresizingFlexibleLeftMargin |
										UIViewAutoresizingFlexibleRightMargin |
										UIViewAutoresizingFlexibleTopMargin |
										UIViewAutoresizingFlexibleBottomMargin);
			cell.accessoryView = spinner;
			[spinner release];
		}
	} else if (cell.accessoryView) {
		cell.accessoryView = nil;
	}
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // If another resolve was running, stop it & remove the activity indicator from that cell
	if (self.currentResolve) {
		// Get the indexPath for the active resolve cell
		NSIndexPath* indexPath = [NSIndexPath indexPathForRow:[self.contacts indexOfObject:self.currentResolve] inSection:0];
		
		// Stop the current resolve, which will also set self.needsActivityIndicator
		[self stopCurrentResolve];
		
		// If we found the indexPath for the row, reload that cell to remove the activity indicator
		if (indexPath.row != NSNotFound)
			[self.tableView reloadRowsAtIndexPaths:[NSArray	arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
	}
 	
	// Then set the current resolve to the service corresponding to the tapped cell
	self.currentResolve = [self.contacts objectAtIndex:indexPath.row];
	[self.currentResolve setDelegate:self];
    
	// Attempt to resolve the service. A value of 0.0 sets an unlimited time to resolve it. The user can
	// choose to cancel the resolve by selecting another service in the table view.
	[self.currentResolve resolveWithTimeout:0.0];
	
	// Make sure we give the user some feedback that the resolve is happening.
	// We will be called back asynchronously, so we don't want the user to think we're just stuck.
	// We delay showing this activity indicator in case the service is resolved quickly.
	self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showWaiting:) userInfo:self.currentResolve repeats:NO];
}


#pragma mark - Bonjour lookup delegate

- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser
         didRemoveService:(NSNetService *)service
               moreComing:(BOOL)moreComing {
    if (self.currentResolve && [service isEqual:self.currentResolve]) {
        [self stopCurrentResolve];
    }
    
	[self.contacts removeObject:service];
	
    if (!moreComing) {
		[self sortAndUpdateUI];
	}
}	

- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser
           didFindService:(NSNetService *)service
               moreComing:(BOOL)moreComing {
	if ([service.name isEqual:self.applicationDelegate.username]) {
        return;
    }
    
    [self.contacts addObject:service];
    
	if (!moreComing) {
		[self sortAndUpdateUI];
	}
}


#pragma mark - Service resolving delegate

- (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict {
	[self stopCurrentResolve];
	[self.tableView reloadData];
}

- (void)netServiceDidResolveAddress:(NSNetService *)service {
	assert(service == self.currentResolve);
	
	[service retain];
	[self stopCurrentResolve];
	
    // Create a new chat view
    ChatViewController *chatViewController = [[ChatViewController alloc] initWithService:service];
    chatViewController.myName = self.applicationDelegate.username;
    
    // Display the chat view
    [self.navigationController pushViewController:chatViewController animated:YES];
    
    // These references are no more needed
    [chatViewController release];
    [service release];
}


#pragma mark - Utility resolving methods

- (void)stopCurrentResolve {
    self.needsActivityIndicator = NO;
	self.timer = nil;
    
	[self.currentResolve stop];
	self.currentResolve = nil;
}


#pragma mark - Other UI related methods

- (void)showWaiting:(NSTimer *)timer {
	if (timer == self.timer) {
		NSNetService* service = (NSNetService*)[self.timer userInfo];
		if (self.currentResolve == service) {
			self.needsActivityIndicator = YES;
            
			NSIndexPath* indexPath = [NSIndexPath indexPathForRow:[self.contacts indexOfObject:self.currentResolve] inSection:0];
			if (indexPath.row != NSNotFound) {
				[self.tableView reloadRowsAtIndexPaths:[NSArray	arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
			}
		}
	}
}

- (IBAction) showSettingsView:(id)button
{
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:self.settingsViewController];
    self.settingsViewController.showDoneButton = YES;
    [self presentModalViewController:navigationController animated:YES];
    [navigationController release];
}

- (void)sortAndUpdateUI {
	// Sort the services by name.
	[self.contacts sortUsingSelector:@selector(localizedCaseInsensitiveCompareByName:)];
	[self.tableView reloadData];
}

@end
