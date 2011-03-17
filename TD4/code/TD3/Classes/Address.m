//
//  Address.m
//  Exemple_KVC
//
//  Created by Stephane Pierroz on 03.09.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import "Address.h"


@implementation Address

@synthesize street;
@synthesize number;

- (id) init
{
    self = [super init];
    self.street = @"Bd de Pérolles";
	 self.number = 80;
    return self;
}

-(void) setStreet:(NSString*) s
{
	if(![s isEqualToString: street ]){
		// Will raise the notification of the modification of numberDouble
		street = s;
		[[NSNotificationCenter defaultCenter] postNotificationName: @"streetChanged" object:nil];
	}
}
-(void) setNumber:(int) n
{
	if(n!=number){
		// Will raise the notification of the modification of numberDouble
		[self willChangeValueForKey:@"numberDouble"];
		number = n;
		[self didChangeValueForKey:@"numberDouble"];
	}
}

-(int) numberDouble
{ 
	return number*2;
}

- (void) dealloc
{
    [street release];
	 // We dont need to relase number it's not an object!!⁄
    [super dealloc];
}

@end
