//
//  FCGame.m
//  FlashCards
//
//  Created by Martin Trejo on 3/22/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import "FCGame.h"

@implementation FCGame

-(id) initWithCards:(NSMutableArray *)c
{
    if (self = [super init]) {
        self.cards = c;
        self.currentCard = 0;
    }
    return self;
}

-(bool)hasMoreCards
{
    return self.currentCard < [self.cards count];
}

-(FCCard*)getNextCard
{
    FCCard* card = [self.cards objectAtIndex:self.currentCard];
    self.currentCard++;
    return card;
}

-(int) getNumRight
{
    int numRight = 0;
    for (int i = 0; i < [self.cards count]; i++) {
        FCCard* c = [self.cards objectAtIndex:i];
        if (c.isCorrect) {
            numRight++;
        }
    }
    return numRight;
}

-(int) getNumWrong
{
    return [self.cards count] - [self getNumRight];
}

@end