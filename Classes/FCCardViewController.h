//
//  FCCardViewController.h
//  FlashCards
//
//  Created by Martin Trejo on 3/21/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FCCardViewController : UIViewController

@property (nonatomic,strong) IBOutlet UILabel* cardLabel;
@property (nonatomic,strong) IBOutlet UIButton* answer1Button;
@property (nonatomic,strong) IBOutlet UIButton* answer2Button;
@property (nonatomic,strong) IBOutlet UIButton* answer3Button;

-(void) nextCard;
-(IBAction)answerButtonTouched:(id)sender;

@end
