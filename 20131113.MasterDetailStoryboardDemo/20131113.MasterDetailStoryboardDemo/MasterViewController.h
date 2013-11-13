//
//  MasterViewController.h
//  20131113.MasterDetailStoryboardDemo
//
//  Created by Chang, Liang on 13-11-13.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
