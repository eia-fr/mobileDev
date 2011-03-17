//
//  Company.m
//  Exemple_KVC
//
//  Created by Stephane Pierroz on 03.09.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import "Company.h"
#import "Employee.h"

@implementation Company

@synthesize employee;

- (id) init
{
	self = [super init];
    
	employee = [[Employee alloc] init];
	
	// ADD the observer to the Notificationcenter
	
	[[NSNotificationCenter defaultCenter] addObserver:self selector: @selector(streetChanged:)
																name: @"streetChanged" object: nil];

	return self;
}

// The calback method of the notification
-(void) streetChanged:(NSNotification *)notification 
{
	
	NSLog(@"The streetChanged notification was raised.");
}

- (void) dealloc
{
    [employee release];
    
    [super dealloc];
}


@end
