//
//  ViewController.h
//  20131020.TableViewWithSectionAndSearchBarDemo
//
//  Created by Chang, Liang on 13-10-20.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

-(void)filterContentForSearchText:(NSString *)searchText;

@end
