//
//  Employee.m
//  Exemple_KVC
//
//  Created by Stephane Pierroz on 03.09.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import "Employee.h"
#import "Address.h"

@implementation Employee

@synthesize address;

-(id) init
{
	self = [super init];
	
	address = [[Address alloc] init];
	
	// Register the KVO notification
	[address addObserver:self forKeyPath:@"street" options:0 context:NULL];
	[address addObserver:self forKeyPath:@"number" options:0 context:NULL];
	[address addObserver:self forKeyPath:@"numberDouble" options:0 context:NULL];
	
	return self;
}

// This method will be called on changes 
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object 
								change:(NSDictionary *)change context:(void *)context
{
	if([keyPath isEqualToString:@"number"])
		NSLog(@"The variable number changed  :%@", [object valueForKeyPath:keyPath]);
	else if([keyPath isEqualToString:@"street"])
		NSLog(@"The street value changed with KVO :%@", [object valueForKeyPath:keyPath]);
	else if([keyPath isEqualToString:@"numberDouble"])
		NSLog(@"The numberDouble	value changed  :%@", [object valueForKeyPath:keyPath]);
}

-(void) dealloc
{
	[address removeObserver:self forKeyPath:@"street"];
	[address removeObserver:self forKeyPath:@"numero"];
	[address release];
	
	[super dealloc];
}

@end
