//
//  main.m
//  20130928.ProtocolDemo
//
//  Created by Chang, Liang on 13-9-28.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FBBDemo.h"
#import "Addition.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
//        NSLog(@"Hello, World!");
        id calculationObject;
        calculationObject = [[Addition alloc] init];
        
        if([calculationObject conformsToProtocol:@protocol(FBBDemo)] == YES){
            NSLog(@"The object conforms the protocol FBBDemo.");
        }
        else{
            NSLog(@"The object does not conform the protocol FBBDemo.");
        }
        
        if([calculationObject respondsToSelector:@selector(optionalMethod)]){
            NSLog(@"The object responds to the selector optionalMethod.");
        }else{
            NSLog(@"The object does not respond to the selector optinalMethod.");
        }
        id<FBBDemo> anotherCalculationObject;
        anotherCalculationObject = [[Addition alloc] init];
        
        NSLog(@"CalculationResult of 2.4 and 5.6 is %f",[anotherCalculationObject calculateWithInput1:2.4f andInput2:5.6f]);
    }
    return 0;
}

