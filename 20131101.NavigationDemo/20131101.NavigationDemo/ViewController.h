//
//  ViewController.h
//  20131101.NavigationDemo
//
//  Created by Chang, Liang on 13-11-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSDictionary *cities;
@property (nonatomic, strong) NSArray *provinces;

@end
