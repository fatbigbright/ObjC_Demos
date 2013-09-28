//
//  FBBDemo.h
//  20130928.ProtocolDemo
//
//  Created by Chang, Liang on 13-9-28.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FBBDemo <NSObject>

-(double) calculateWithInput1: (double) input1 andInput2: (double) input2;

@optional
-(void) optionalMethod;

@end
