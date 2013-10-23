//
//  ViewController.h
//  20131023.MoveTableViewLineDemo
//
//  Created by Chang, Liang on 13-10-23.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UINavigationItem *myNavigationItem;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;

@property (strong, nonatomic) NSMutableArray *listItems;

@end
