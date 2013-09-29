//
//  Singleton.m
//  20130929.SingletonDemo
//
//  Created by Chang, Liang on 13-9-29.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

@synthesize singletonName = _singletonName;
@synthesize singletonData = _singletonData;

static Singleton *sharedManager = nil;

+(Singleton *)sharedManager{
    static dispatch_once_t once;
    
    //instantiate only once
    dispatch_once(&once, ^{
        sharedManager = [[self alloc] init];
    });
    
    return sharedManager;
}

@end
