//
//  FCViewController.m
//  FlashCards
//
//  Created by Martin Trejo on 3/20/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import "FCViewController.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showStates:(id)sender{
    FCAnswerKey* key = [[FCAnswerKey alloc] init];
    NSMutableArray *cards = [key allocStateCards];
    
    [self showCards:cards];
}

- (IBAction)showCapitals:(id)sender{
    FCAnswerKey* key = [[FCAnswerKey alloc] init];
    NSMutableArray *cards = [key allocCapitalCards];
    
    [self showCards:cards];
}

- (IBAction)showCards:(NSMutableArray *)cards {
    FCGame* game = [[FCGame alloc] initWithCards:cards];
    
    self.cardVC = [[FCCardViewController alloc]
                   initWithGame:game];
    [self.view.window addSubview:self.cardVC.view];
}


@end
