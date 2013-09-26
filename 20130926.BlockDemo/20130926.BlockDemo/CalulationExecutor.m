//
//  CalulationExecutor.m
//  20130926.BlockDemo
//
//  Created by Chang, Liang on 13-9-26.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "CalulationExecutor.h"

@implementation CalulationExecutor

-(void)executeCalculationWithInput1: (double)input1 AndInput2: (double)input2 WithCalculationBlock: (double (^) (double, double))calculationBlock{
    double calculationResult = calculationBlock(input1, input2);
    
    NSLog(@"Calculation result of %f and %f is %f", input1, input2, calculationResult);
}

@end
