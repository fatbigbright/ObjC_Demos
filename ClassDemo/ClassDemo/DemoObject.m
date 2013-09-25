//
//  DemoObject.m
//  ClassDemo
//
//  Created by Chang, Liang on 13-9-25.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "DemoObject.h"

@implementation DemoObject

-(NSInteger)GetIdentity{
    return identity;
}

-(NSString *)GetName{
    return name;
}

-(id) initWithIdentity:(NSInteger)inputIdentity AndName:(NSString *)inputName{
    self = [super init];
    if(self){
        identity = inputIdentity;
        name = inputName;
    }
    
    return self;
    
}

@end
