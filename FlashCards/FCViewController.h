//
//  FCViewController.h
//  FlashCards
//
//  Created by Martin Trejo on 3/20/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCGame.h"
#import "FCAnswerKey.h"
#import "FCCardViewController.h"

@interface FCViewController : UIViewController

@property (nonatomic,strong) FCCardViewController *cardVC;

-(IBAction)showCards:(NSMutableArray*)cards;
- (IBAction)showStates:(id)sender;
- (IBAction)showCapitals:(id)sender;

@end
