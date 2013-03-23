//
//  FCCardViewController.m
//  FlashCards
//
//  Created by Martin Trejo on 3/21/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import "FCCardViewController.h"

@interface FCCardViewController ()

@end

@implementation FCCardViewController

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    return self;
}

-(id)initWithGame:(FCGame *)g {
    if (self = [self initWithNibName:@"FCCardViewController" bundle:[NSBundle mainBundle]]) {
        self.game = g;
    }
    return  self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self nextCard];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) nextCard {
    if ([self.game hasMoreCards]) {
        self.currentCard = [self.game getNextCard];
        
        self.cardLabel.text = self.currentCard.cardText;
        [self.answer1Button
         setTitle:[self.currentCard.answers objectAtIndex:0]
         forState:UIControlStateNormal];
        [self.answer2Button
         setTitle:[self.currentCard.answers objectAtIndex:1]
         forState:UIControlStateNormal];
        [self.answer3Button
         setTitle:[self.currentCard.answers objectAtIndex:2]
         forState:UIControlStateNormal];
    } else {
        self.resultsVC = [[FCResultViewController alloc] initWithGame:self.game];
        [self.view.window addSubview:self.resultsVC.view];
        [self.view removeFromSuperview];
    }
}

- (IBAction)answerButtonTouched:(id)sender {
    if (sender == self.answer1Button) {
        [self.currentCard recordAnswer:0];
    }
    else if (sender == self.answer2Button) {
        [self.currentCard recordAnswer:1];
    }
    else if (sender == self.answer3Button) {
        [self.currentCard recordAnswer:2];
    }
    [self nextCard];
}

@end
