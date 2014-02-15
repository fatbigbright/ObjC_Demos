//
//  PlayCardDeck.m
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-10.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "PlayCardDeck.h"
#import "PlayingCard.h"

@implementation PlayCardDeck

-(instancetype)init
{
    self = [super init];
    if(self){
        for(NSString *suit in [PlayingCard validSuits]){
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank] ; rank++){
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
