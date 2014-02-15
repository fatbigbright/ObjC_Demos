//
//  PlayingCard.m
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-10.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

//important to setter&getter
@synthesize suit = _suit;

-(NSString *)suit
{
    return _suit ? _suit : @"?";
}

-(void)setSuit: (NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}

+(NSArray *)validSuits
{
    return @[@"♠", @"♣", @"♥", @"♦"];
}
+(NSArray *)rankStrings
{
    return @[@"?",@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K",@"A"];
}
+(NSUInteger)maxRank
{
    //self in class method stands for the current class, not any instance
    return [[self rankStrings] count] - 1;
}

-(void)setRank:(NSUInteger)rank
{
    if([PlayingCard maxRank] >= rank){
        _rank = rank;
    }
}

-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    for (PlayingCard *otherCard in otherCards){
        if (otherCard.rank == self.rank)
            score = 1;
    }
    
    return score;
}

-(instancetype)init
{
    self = [super init];
    if(self){
        self.chosen = NO;
        self.matched = NO;
    }
    return self;
}


@end
