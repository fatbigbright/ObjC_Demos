//
//  main.m
//  20130927.BlockDemo
//
//  Created by Chang, Liang on 13-9-27.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef double (^CalculationBlock) (double, double);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // insert code here...

        /* 1. type definition of block */
        CalculationBlock sumBlock = ^(double input1, double input2){
            return input1 + input2;
        };
        
        CalculationBlock mulBlock = ^(double input1, double input2){
            return input1 * input2;
        };
        
        double input1 = 2.9f;
        double input2 = 4.7f;
        
        NSLog(@"Result of sumBlock for %f & %f is %f", input1, input2, sumBlock(input1, input2));
        NSLog(@"Result of mulBlock for %f & %f is %f", input1, input2, mulBlock(input1, input2));
        
        /* 2. using Block in Enumeration */
        NSArray *array = [[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five",nil];
        
        __block NSString *specifiedString = @"Three";
        
        [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Item Value is %@", obj);
            if([obj isEqualToString:specifiedString]){
                *stop = YES;
                NSLog(@"Specified value \"%@\" has been reached. Break and jump out.", specifiedString);
            }
        }];
        
        specifiedString = @"Four";
        
        [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            NSLog(@"Item Value is %@", obj);
            if([obj isEqualToString:specifiedString]){
                *stop = YES;
                NSLog(@"Specified value \"%@\" has been reached. Break and jump out.", specifiedString);
            }
        }];
    }
    return 0;
}

