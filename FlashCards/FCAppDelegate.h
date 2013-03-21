//
//  FCAppDelegate.h
//  FlashCards
//
//  Created by Martin Trejo on 3/20/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FCViewController;

@interface FCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) FCViewController *viewController;

@end
