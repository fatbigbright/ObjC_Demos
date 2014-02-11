//
//  Deck.h
//  20140209.Matchismo
//
//  Created by Chang, Liang on 14-2-9.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard: (Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card *)drawRandomCard;

@end
