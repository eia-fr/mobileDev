//
//  Company.h
//  Exemple_KVC
//
//  Created by Stephane Pierroz on 03.09.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Employee;

@interface Company : NSObject 
{
	Employee *employee;
}

@property (nonatomic, retain) Employee *employee;

@end
