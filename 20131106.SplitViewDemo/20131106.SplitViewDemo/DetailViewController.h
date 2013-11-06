//
//  DetailViewController.h
//  20131106.SplitViewDemo
//
//  Created by Chang, Liang on 13-11-6.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlueViewController.h"
#import "YellowViewController.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) BlueViewController *blueViewController;
@property (nonatomic, strong) YellowViewController *yellowViewController;

-(void)updateView: (int)row;

@end
