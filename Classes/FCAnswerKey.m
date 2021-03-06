//
//  FCAnswerKey.m
//  FlashCards
//
//  Created by Martin Trejo on 3/22/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import "FCAnswerKey.h"

@implementation FCAnswerKey

-(NSMutableArray*)allocStateCards
{
    NSMutableArray *cards = [[NSMutableArray alloc] initWithObjects:
        [[FCCard alloc]
            initWithQuestion:@"Alabama" answer:@"Montgomery" wrongAnswer1:@"Birmingham" wrongAnswer2:@"Mobile"],
        [[FCCard alloc] initWithQuestion:@"New York" answer:@"Albany" wrongAnswer1:@"New York City" wrongAnswer2:@"Buffalo"],
        [[FCCard alloc] initWithQuestion:@"New Jersey" answer:@"Trenton" wrongAnswer1:@"Camden" wrongAnswer2:@"Newark"],
        [[FCCard alloc] initWithQuestion:@"Oklahoma" answer:@"Oklahoma City" wrongAnswer1:@"Tulsa" wrongAnswer2:@"Muskogee"],
    nil ];
    
    return cards;
}

-(NSMutableArray*)allocCapitalCards
{
    NSMutableArray *cards = [[NSMutableArray alloc] initWithObjects:
                           [[FCCard alloc]
                            initWithQuestion:@"Montgomery" answer:@"Alabama" wrongAnswer1:@"Mississipi" wrongAnswer2:@"Tennessee"],
                           [[FCCard alloc] initWithQuestion:@"Albany" answer:@"New York" wrongAnswer1:@"New Jersey" wrongAnswer2:@"Pennsylvania"],
                           [[FCCard alloc] initWithQuestion:@"Trenton" answer:@"New Jersey" wrongAnswer1:@"New York" wrongAnswer2:@"Connecticut"],
                           [[FCCard alloc] initWithQuestion:@"Oklahoma City" answer:@"Oklahoma" wrongAnswer1:@"Tennessee" wrongAnswer2:@"New Jersey"],
                           nil];
    
    return cards;
}

@end
