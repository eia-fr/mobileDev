//
//  TD3ViewController.m
//  TD3
//
//  Created by Elias Medawar on 14.03.11.
//  Copyright 2011 HEFR. All rights reserved.
//

#import "TD3ViewController.h"
#import "Company.h"
#import "Address.h";
#import "Employee.h";

@implementation TD3ViewController



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	company =[[Company alloc] init];
	Employee *employee = [company employee];
	Address *address = [employee address];
	
	
	// Using getter
	NSLog(@"Using getter %@", [address street]);
	
	
	// Using the "." method 
 	company.employee.address.street = @"Av. de la gare 12";
	NSLog(@"Using the . method %@", company.employee.address.street);
	
	// Using KVC
	[ address setValue:@"Rue du midi 12" forKey:@"street"]; 
	NSLog(@"Using KVC %@", [ address valueForKey:@"street" ]);
	
	// From employee using KVC path
	[ employee setValue:@"Rue de la paix 11" forKeyPath:@"address.street"]; 
	NSLog(@"From employee using KVC path %@", 
			[employee valueForKeyPath:@"address.street" ]);
	
	// From company using KVC path
	[ company setValue:@"Rue du midi 11" forKeyPath:@"employee.address.street"]; 
	NSLog(@"From employee using KVC path %@", 
			[ company valueForKeyPath:@"employee.address.street" ]);
	
	//Transform int to string
	NSString* nubmber = [NSString stringWithFormat:@"%d", [address number]];
	streetTextField.text = address.street; // Display values
	numTextField.text = nubmber; 
	
    [super viewDidLoad];
	
}


-(IBAction) setStreet :(id)sender
{
		if(![company.employee.address.street isEqualToString: [streetTextField text]])
			[company setValue:streetTextField.text forKeyPath:@"employee.address.street"];
			
		NSString* nubmber = [NSString stringWithFormat:@"%d", company.employee.address.number];
		if(![nubmber isEqualToString: [numTextField text]])
			[company setValue:numTextField.text  forKeyPath:@"employee.address.number"];

}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
