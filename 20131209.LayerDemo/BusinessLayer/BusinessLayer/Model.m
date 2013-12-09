//
//  Model.m
//  BusinessLayer
//
//  Created by Chang, Liang on 13-12-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "Model.h"

@implementation Model

-(NSString *)DoSomething{
    return [NSString stringWithFormat:@"Model name is %@, and %@", self.Name, self.Description];
}

@end
