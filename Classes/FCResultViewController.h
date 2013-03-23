//
//  FCResultViewController.h
//  FlashCards
//
//  Created by Martin Trejo on 3/21/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FCGame.h"

@interface FCResultViewController : UIViewController 

@property (nonatomic,strong) IBOutlet UILabel* numRightLabel;
@property (nonatomic,strong) IBOutlet UILabel* numWrongLabel;
@property (nonatomic,strong) FCGame* game;

-(id) initWithGame:(FCGame*)g;
- (IBAction)startAgain:(id)sender;

@end
