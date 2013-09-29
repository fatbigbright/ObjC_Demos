//
//  main.m
//  20130929.SingletonDemo
//
//  Created by Chang, Liang on 13-9-29.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Singleton *singletonObject1 = [Singleton sharedManager];
        singletonObject1.singletonName = @"First singleton object";
        singletonObject1.singletonData = 0;
        
        Singleton *singletonObject2 = [Singleton sharedManager];
        singletonObject2.singletonName = @"Second singleton object";
        singletonObject2.singletonData += 10;
        
        NSLog(@"singletonName value of singletonObject1: %@, singletonData value is %d", singletonObject1.singletonName, singletonObject2.singletonData);
        
        NSLog(@"singletonName value of singletonObject2: %@, singletonData value is %d", singletonObject2.singletonName, singletonObject2.singletonData);
        
        if([singletonObject1 isEqualTo:singletonObject2])
            NSLog(@"In fact, singletonObject1 equals to singletonObject2.");
    }
    return 0;
}

