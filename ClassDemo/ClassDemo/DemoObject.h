//
//  DemoObject.h
//  ClassDemo
//
//  Created by Chang, Liang on 13-9-25.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoObject : NSObject{
    NSInteger identity;
    NSString * name;
}

-(NSInteger) GetIdentity;
-(NSString *) GetName;
-(id) initWithIdentity: (NSInteger)inputIdentity AndName: (NSString *)inputName;

@end
