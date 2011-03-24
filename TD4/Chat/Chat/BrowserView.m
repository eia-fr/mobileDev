//
//  BrowserView.m
//  Chat
//
//  Created by Jonathan Stoppani on 3/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BrowserView.h"
#import "FirstViewController.h"

@implementation BrowserView

@synthesize services;
@synthesize netServiceBrowser;
@synthesize controller;
@synthesize currentResolve;
@synthesize timer;

- (void)stopCurrentResolve {
	self.timer = nil;
    
	[self.currentResolve stop];
	self.currentResolve = nil;
}


- (BOOL)searchForServicesOfType:(NSString *)type inDomain:(NSString *)domain {
    [self.services release];
    self.services = nil;
    
    self.services = [[NSMutableArray alloc] init];

    
    [self.controller updateStatus:@"Searching for services..."];
    
	//[self stopCurrentResolve];
	//[self.netServiceBrowser stop];
	[self.services removeAllObjects];
    
	NSNetServiceBrowser *aNetServiceBrowser = [[NSNetServiceBrowser alloc] init];
	if(!aNetServiceBrowser) {
        // The NSNetServiceBrowser couldn't be allocated and initialized.
		return NO;
	}
    
	aNetServiceBrowser.delegate = self;
	self.netServiceBrowser = aNetServiceBrowser;
	[aNetServiceBrowser release];
	[self.netServiceBrowser searchForServicesOfType:type inDomain:domain];
    
	[self.tableView reloadData];
	return YES;
}


#pragma mark - Services delegate

- (void)sortAndUpdateUI {
	// Sort the services by name.
	//[self.services sortUsingSelector:@selector(localizedCaseInsensitiveCompareByName:)];
	[self.tableView reloadData];
}


- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didRemoveService:(NSNetService *)service moreComing:(BOOL)moreComing {
	// If a service went away, stop resolving it if it's currently being resolved,
	// remove it from the list and update the table view if no more events are queued.
	
    [self.controller updateStatus:@"Service removed"];
    
	/*if (self.currentResolve && [service isEqual:self.currentResolve]) {
		[self stopCurrentResolve];
	}*/
	[self.services removeObject:service];
	/*if (self.ownEntry == service)
		self.ownEntry = nil;*/
	
	// If moreComing is NO, it means that there are no more messages in the queue from the Bonjour daemon, so we should update the UI.
	// When moreComing is set, we don't update the UI so that it doesn't 'flash'.
	if (!moreComing) {
		[self sortAndUpdateUI];
	}
}	

- (void)netServiceBrowser:(NSNetServiceBrowser *)netServiceBrowser didFindService:(NSNetService *)service moreComing:(BOOL)moreComing {
	// If a service came online, add it to the list and update the table view if no more events are queued.
	/*if ([service.name isEqual:self.ownName])
		self.ownEntry = service;
	else*/
    [self.controller updateStatus:@"Service found"];
    NSLog(@"Service is: %@ (%@)", service, moreComing);
    
    [self.services addObject:service];
    NSLog(@"Called, count is %d", [self.services count]);
    
	// If moreComing is NO, it means that there are no more messages in the queue from the Bonjour daemon, so we should update the UI.
	// When moreComing is set, we don't update the UI so that it doesn't 'flash'.
	if (!moreComing) {
		[self sortAndUpdateUI];
	}
}	

// This should never be called, since we resolve with a timeout of 0.0, which means indefinite
- (void)netService:(NSNetService *)sender didNotResolve:(NSDictionary *)errorDict {
	/*[self stopCurrentResolve];
	[self.tableView reloadData];*/
    NSLog(@"Not resolved");
}

- (void)netServiceDidResolveAddress:(NSNetService *)service {
	assert(service == self.currentResolve);
	
	[service retain];
	[self stopCurrentResolve];
	
	//[self.delegate browserViewController:self didResolveInstance:service];
	[service release];
    NSLog(@"Resolved");
}









#pragma mark - Controller

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}






#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    NSLog(@"Called, count is %d", [self.services count]);
    return [self.services count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
	
	// Set up the text for the cell
	NSNetService *service = [self.services objectAtIndex:indexPath.row];
	cell.textLabel.text = [service name];
	cell.textLabel.textColor = [UIColor blackColor];
    
    NSLog(@"Name is %@", [service name]);
    
	//cell.accessoryType = self.showDisclosureIndicators ? UITableViewCellAccessoryDisclosureIndicator : UITableViewCellAccessoryNone;
		
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    
    // If another resolve was running, stop it & remove the activity indicator from that cell
	if (self.currentResolve) {
		// Get the indexPath for the active resolve cell
		NSIndexPath* indexPath = [NSIndexPath indexPathForRow:[self.services indexOfObject:self.currentResolve] inSection:0];
		
		// Stop the current resolve, which will also set self.needsActivityIndicator
		[self stopCurrentResolve];
		
		// If we found the indexPath for the row, reload that cell to remove the activity indicator
		if (indexPath.row != NSNotFound)
			[self.tableView reloadRowsAtIndexPaths:[NSArray	arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationNone];
	}
 	
	// Then set the current resolve to the service corresponding to the tapped cell
	self.currentResolve = [self.services objectAtIndex:indexPath.row];
	[self.currentResolve setDelegate:self];
    
	// Attempt to resolve the service. A value of 0.0 sets an unlimited time to resolve it. The user can
	// choose to cancel the resolve by selecting another service in the table view.
	[self.currentResolve resolveWithTimeout:0.0];
	
	// Make sure we give the user some feedback that the resolve is happening.
	// We will be called back asynchronously, so we don't want the user to think we're just stuck.
	// We delay showing this activity indicator in case the service is resolved quickly.
	self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(showWaiting:) userInfo:self.currentResolve repeats:NO];

}

@end
