//
//  ViewController.h
//  20131116.TableViewDemo
//
//  Created by Chang, Liang on 13-11-16.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>

@property (nonatomic, strong) NSArray *teamlist;
@property (nonatomic, strong) NSMutableArray *filterdTeamlist;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

-(void)filterContentForSearchText: (NSString *)searchText;
@end
