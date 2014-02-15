//
//  CardMachingGame.h
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-12.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMachingGame : NSObject

-(instancetype)initWithCardCount:(NSUInteger)count usingDeck: (Deck *)deck;
-(void)chooseCardAtIndex: (NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
