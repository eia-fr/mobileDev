//
//  Persistence_FileViewController.h
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright Stéphane Pierroz 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Person;

@interface Persistence_FileViewController : UIViewController <UITextFieldDelegate>
{
	IBOutlet UITextField *nameTextField;
	IBOutlet UITextField *weightTextField;
	IBOutlet UISwitch *marriedSwitch;
	IBOutlet UIDatePicker *datePicker;
}

- (IBAction)save: (id)sender;
- (IBAction)restore: (id)sender;

@end

