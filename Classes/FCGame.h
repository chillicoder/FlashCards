//
//  FCGame.h
//  FlashCards
//
//  Created by Martin Trejo on 3/22/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCCard.h"
#import "FCAnswerKey.h"

@interface FCGame : NSObject

@property(nonatomic,strong) NSMutableArray* cards;
@property(nonatomic) int currentCard;

-(id) initWithCards:(NSMutableArray*)c;
-(bool) hasMoreCards;
-(FCCard*) getNextCard;
-(int) getNumRight;
-(int) getNumWrong;

@end
