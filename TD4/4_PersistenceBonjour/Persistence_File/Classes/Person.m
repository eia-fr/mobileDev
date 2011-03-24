//
//  Person.m
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import "Person.h"


@implementation Person

@synthesize name, birthDate, weight, married;


- (id) initWithName: (NSString *)aName birthDate: (NSDate *)aBirthDate weight: (float)aWeight isMarried: (BOOL)aStatus
{
	self = [super init];
	
	[self setName: aName];
	[self setBirthDate: aBirthDate];
	[self setWeight: aWeight];
	[self setMarried: aStatus];
	
	return self;
}


- (NSDateFormatter *)dateFormatter
{
	NSDateFormatter *myFormatter = [[[NSDateFormatter alloc] init] autorelease];
	[myFormatter setDateFormat: @"yyyy-MM-dd"];
	
	return myFormatter;
}


- (void) saveToFile: (NSString *)aFilePath
{
	NSLog(@"aFilePath:  %@",aFilePath);
	NSString *concatenatedPerson = [NSString stringWithFormat: @"%@|%@|%f|%d", name, [[self dateFormatter] stringFromDate: birthDate], weight, married];

    // Save in a file (your code)
    
    [concatenatedPerson writeToFile: aFilePath atomically: YES encoding: NSUTF8StringEncoding error: NULL];
	
	NSLog(@"path:  %@", aFilePath);
	NSLog(@"stringToBeSaved :  %@", concatenatedPerson);
}


- (void) restoreFromFile: (NSString *)aFilePath
{   
	// Restore from your file (your code) to the NSString stringToBeRestored	
    NSString *concatenatedPerson = [NSString stringWithContentsOfFile: aFilePath encoding: NSUTF8StringEncoding error: NULL];
	
    NSLog(@"concatenatedPerson:  %@", concatenatedPerson);
    
	NSArray *personComponents = [concatenatedPerson componentsSeparatedByString: @"|"];
	
	[self setName: [personComponents objectAtIndex: 0]];
	[self setBirthDate: [[self dateFormatter] dateFromString: [personComponents objectAtIndex: 1]]];
	[self setWeight: [[personComponents objectAtIndex: 2] floatValue]];
	[self setMarried: [[personComponents objectAtIndex: 3] boolValue]];
}

@end
