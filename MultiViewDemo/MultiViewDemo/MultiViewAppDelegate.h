//
//  MultiViewAppDelegate.h
//  MultiViewDemo
//
//  Created by Chang, Liang on 13-1-24.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface MultiViewAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RootViewController *rootViewController;
@property (strong, nonatomic) UINavigationController *navigationController;

@end
