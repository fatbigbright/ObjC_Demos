//
//  Singleton.h
//  20130929.SingletonDemo
//
//  Created by Chang, Liang on 13-9-29.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject

+(Singleton *)sharedManager;

@property (nonatomic, strong) NSString *singletonName;
@property (nonatomic) int singletonData;

@end
