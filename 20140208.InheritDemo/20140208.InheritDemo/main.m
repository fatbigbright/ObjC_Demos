//
//  main.m
//  20140208.InheritDemo
//
//  Created by Chang, Liang on 14-2-8.
//  Copyright (c) 2014年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Parent.h"
#import "Child.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Parent *p = [[Parent alloc] init];
        Child *c = [[Child alloc] init];
        
        [p DoSomething];
        [c DoSomething];
    }
    return 0;
}

