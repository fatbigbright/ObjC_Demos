//
//  ViewController.h
//  20131019.TableViewWithSectionsDemo
//
//  Created by Chang, Liang on 13-10-20.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSDictionary *dictData;
@property (nonatomic, strong) NSArray *listGroupName;

-(void)filterContentForSearchText:(NSString *)searchText scope:(NSUInteger)scope;

@end
