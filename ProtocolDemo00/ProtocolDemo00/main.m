//
//  main.m
//  ProtocolDemo00
//
//  Created by Chang, Liang on 12-11-10.
//  Copyright (c) 2012年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Child1 *child1 = [[Child1 alloc] init];
        Child2 *child2 = [[Child2 alloc] init];
        
        [child1 DoSomething];
        [child2 DoSomething];
    }
    return 0;
}

