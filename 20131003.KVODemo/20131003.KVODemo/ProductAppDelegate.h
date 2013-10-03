//
//  ProductAppDelegate.h
//  20131003.KVONotificationDemo
//
//  Created by Chang, Liang on 13-10-3.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppStatusWatcher.h"

@interface ProductAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *appStatus;
@property (strong, nonatomic) AppStatusWatcher *watcher;

@end
