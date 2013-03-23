//
//  FCCard.h
//  FlashCards
//
//  Created by Martin Trejo on 3/22/13.
//  Copyright (c) 2013 Martin Trejo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FCCard : NSObject

@property (nonatomic) bool isCorrect;
@property(nonatomic,strong) NSString* cardText;
@property(nonatomic,strong) NSMutableArray* answers;
@property(nonatomic) int correctAnswer;

- (id) initWithQuestion:(NSString*) question
                answer:(NSString*) answer
                wrongAnswer1:(NSString*) wrongAnswer1
                wrongAnswer2:(NSString*) wrongAnswer2;

-(void) recordAnswer:(int)answerNum;
@end
