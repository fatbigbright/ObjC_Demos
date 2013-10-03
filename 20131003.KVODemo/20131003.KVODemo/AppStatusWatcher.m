//
//  AppStatusWatcher.m
//  20131003.KVONotificationDemo
//
//  Created by Chang, Liang on 13-10-3.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "AppStatusWatcher.h"

@implementation AppStatusWatcher

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSLog(@"Property '%@' of object '%@' changed %@ context: %@",keyPath, object, change, context );
}

@end
