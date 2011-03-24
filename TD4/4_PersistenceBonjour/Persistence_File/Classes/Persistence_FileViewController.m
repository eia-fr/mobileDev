//
//  Persistence_FileViewController.m
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright Stéphane Pierroz 2010. All rights reserved.
//

#import "Persistence_FileViewController.h"
#import "Person.h"

@implementation Persistence_FileViewController

- (NSString *) filePath
{
// You can use this method if you want (but you have to code it or remove it)
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                         NSUserDomainMask, YES);
    NSString *path = [[paths objectAtIndex: 0] stringByAppendingPathComponent: @"person"];
	
    return path;
}


- (IBAction)save: (id)sender
{
	Person *person = [[[Person alloc] initWithName: [nameTextField text]
										 birthDate: [datePicker date]
											weight: [[weightTextField text] floatValue]
										 isMarried: [marriedSwitch isOn]] autorelease];
	
	//pour test
	//person.name = filePath;
	//NSLog(@"person.name:  %@",person.name);
	[person saveToFile: [self filePath]];
}


- (IBAction)restore: (id)sender
{
	Person *person = [[[Person alloc] init] autorelease];
	[person restoreFromFile: [self filePath]];
	
	[nameTextField setText: [person name]];
	[datePicker setDate: [person birthDate]];
	[weightTextField setText: [NSString stringWithFormat: @"%f", [person weight]]];
	[marriedSwitch setOn: [person married]];
}


- (void)dealloc 
{

	[super dealloc];
}

// pour supprimer le clavier si l'utilisateur click return
- (BOOL)textFieldShouldReturn:(UITextField *)textField 
{
	[textField resignFirstResponder];
	
	return NO;
}

@end
