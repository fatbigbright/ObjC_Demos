//
//  PlayingCard.h
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-10.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+(NSArray *)validSuits;

+(NSUInteger)maxRank;
@end
