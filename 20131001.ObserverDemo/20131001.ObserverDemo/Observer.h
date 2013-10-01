//
//  Observer.h
//  20131001.ObserverDemo
//
//  Created by Chang, Liang on 13-10-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Observer <NSObject>
@required;
-(void)update;

@end
