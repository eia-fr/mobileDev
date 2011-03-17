//
//  Persistence_FileAppDelegate.h
//  Persistence_File
//
//  Created by Stephane Pierroz on 10.11.10.
//  Copyright Stéphane Pierroz 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Persistence_FileViewController;

@interface Persistence_FileAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow *window;
    Persistence_FileViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Persistence_FileViewController *viewController;

@end

