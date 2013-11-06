//
//  MasterViewController.h
//  20131106.SplitViewDemo
//
//  Created by Chang, Liang on 13-11-6.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface MasterViewController : UITableViewController

@property (nonatomic, strong) NSArray *listData;
@property (nonatomic, strong) DetailViewController *detailViewController;

@end
