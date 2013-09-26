//
//  main.m
//  20130926.BlockDemo
//
//  Created by Chang, Liang on 13-9-26.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalulationExecutor.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        /* 1. Block with no variable nor return value */
        void (^simpleBlock)(void);
        
        simpleBlock = ^{
            NSLog(@"1. simpleBlock: Hello, World!");
        };
        
        simpleBlock();
        
        /* 2. Block with variables and return value */
        double (^multiplyTwoValues)(double, double);
        
        multiplyTwoValues = ^(double firstValue, double secondValue){
            return firstValue * secondValue;
        };
        
        NSLog(@"2. mutiplyTwoValues: 2.3 * 4.5 = %f", multiplyTwoValues(2.3f, 4.5f));
        
        /* 3. closure */
        int integerForOutput;
        integerForOutput = 0;
        void (^outputInteger)();
        outputInteger = ^{
            NSLog(@"3. outputInteger: current integer value is : %d. You can find value is always that when the block was defined.", integerForOutput);
        };
        for (integerForOutput = 0; integerForOutput < 3; integerForOutput++) {
            outputInteger();
        }
        
        /* 4. closure 2 */
        __block int integerForOutput2;//if the variable/object which will be refered in block needs to change in every calling, using __block to share storage is necessary.
        integerForOutput2 = 0;
        void (^outputInteger2)();
        outputInteger2 = ^{
            NSLog(@"4. outputInteger2: current integer value is %d. You can find value is changing during every calling", integerForOutput2);
        };
        
        for( integerForOutput2 = 0; integerForOutput2 < 3; integerForOutput2++){
            outputInteger2();
        }
        
        void (^changeInteger)();
        changeInteger = ^{
            NSLog(@"4. changeInteger: add 10 to the variable integerForOutput2.");
            integerForOutput2 += 10;
        };
        
        changeInteger();
        
        NSLog(@"Let's check whether integerForOutput2 has been changed: %d", integerForOutput2);
        
        /* 5. calling object method by passing block */
        CalulationExecutor *calculationExecutor = [[CalulationExecutor alloc] init];
        [calculationExecutor executeCalculationWithInput1:4.5f AndInput2:2.8f WithCalculationBlock:^(double input1, double input2){
            return input1 + input2;
        }];
    }
    return 0;
}

