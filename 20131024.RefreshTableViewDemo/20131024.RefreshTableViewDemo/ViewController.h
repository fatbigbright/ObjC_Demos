//
//  ViewController.h
//  20131024.RefreshTableViewDemo
//
//  Created by Chang, Liang on 13-10-24.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dateList;

@end
