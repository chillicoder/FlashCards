//
//  FCResultViewController.m
//  FlashCards
//
//  Created by Martin Trejo on 3/21/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import "FCResultViewController.h"

@interface FCResultViewController ()

@end

@implementation FCResultViewController

-(id) initWithGame:(FCGame *)g {
    if (self = [self
                initWithNibName:@"FCResultViewController" bundle:[NSBundle mainBundle]]) {
                    self.game = g;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.numRightLabel.text =
        [NSString stringWithFormat:@"%d Right",
         [self.game getNumRight]];
    self.numWrongLabel.text =
        [NSString stringWithFormat:@"%d Wrong",
         [self.game getNumWrong]];
 }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startAgain:(id)sender{
    [self.view removeFromSuperview];
}

@end
