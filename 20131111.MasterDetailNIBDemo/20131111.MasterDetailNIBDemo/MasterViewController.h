//
//  MasterViewController.h
//  20131111.MasterDetailNIBDemo
//
//  Created by Chang, Liang on 13-11-11.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
