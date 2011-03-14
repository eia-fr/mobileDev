//
//  Address.h
//  Exemple_KVC
//
//  Created by Stephane Pierroz on 03.09.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Address : NSObject 
{
	NSString *street;
	int number;
}

@property (nonatomic, retain) NSString *street;
@property (nonatomic) int number;

// numberDouble is not a proprety so we need to implement getter and setter
-(int) numberDouble;


@end
