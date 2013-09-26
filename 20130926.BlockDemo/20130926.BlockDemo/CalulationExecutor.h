//
//  CalulationExecutor.h
//  20130926.BlockDemo
//
//  Created by Chang, Liang on 13-9-26.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalulationExecutor : NSObject

//Block will always be the last parameter
-(void)executeCalculationWithInput1: (double)input1 AndInput2: (double)input2 WithCalculationBlock: (double (^) (double, double))calculationBlock;

@end
