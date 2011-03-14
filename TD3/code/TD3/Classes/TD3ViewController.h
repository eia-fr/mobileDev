//
//  TD3ViewController.h
//  TD3
//
//  Created by Elias Medawar on 14.03.11.
//  Copyright 2011 HEFR. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Company;

@interface TD3ViewController : UIViewController {
	IBOutlet UITextField *streetTextField;
	IBOutlet UITextField *numTextField;
	Company *company;
}
- (IBAction) setStreet : (id)sender;
@end
