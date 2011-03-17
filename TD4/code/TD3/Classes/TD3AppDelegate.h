//
//  TD3AppDelegate.h
//  TD3
//
//  Created by Elias Medawar on 14.03.11.
//  Copyright 2011 HEFR. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TD3ViewController;

@interface TD3AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TD3ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TD3ViewController *viewController;

@end

