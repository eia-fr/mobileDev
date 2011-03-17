//
//  Person.h
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright 2010 Stéphane Pierroz. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject 
{
	NSString *name;
	NSDate *birthDate;
	float weight;
	BOOL married;
}

@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSDate *birthDate;
@property (nonatomic) float weight;
@property (nonatomic) BOOL married;


- (id) initWithName: (NSString *)aName birthDate: (NSDate *)aBirthDate weight: (float)aWeight isMarried: (BOOL)aStatus;

- (void) saveToFile: (NSString *)aFilePath;
- (void) restoreFromFile: (NSString *)aFilePath;

@end
