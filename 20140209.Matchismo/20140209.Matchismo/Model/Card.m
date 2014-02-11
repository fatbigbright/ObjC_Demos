//
//  Card.m
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-9.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents]){
            score = 1;
        }
    }
    
    return score;
}

@end

