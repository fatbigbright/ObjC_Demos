//
//  ViewController.h
//  20131018.TableViewSearchBarDemo
//
//  Created by Chang, Liang on 13-10-18.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UITableViewController<UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate>
@property (strong, nonatomic) IBOutlet UISearchBar *searchBar;

@property (nonatomic, strong) NSArray *listTeams;//All the teams
@property (nonatomic, strong) NSMutableArray *listFilterTeams;//Teams that filtered

-(void)filterContentForSearchText: (NSString *)searchText scope:(NSUInteger)scope;

@end
