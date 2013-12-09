//
//  Model.h
//  BusinessLayer
//
//  Created by Chang, Liang on 13-12-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, strong) NSString *Name;
@property (nonatomic, strong) NSString *Description;

-(NSString *) DoSomething;

@end
