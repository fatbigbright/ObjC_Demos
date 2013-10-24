//
//  ViewController.m
//  20131024.RefreshTableViewDemo
//
//  Created by Chang, Liang on 13-10-24.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.dateList = [[NSMutableArray alloc] initWithObjects:[NSDate date], nil];
    
    //initial RefreshControl
    UIRefreshControl *refreshControl = [[UIRefreshControl alloc] init];
    refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Drag and Refresh"];
    [refreshControl addTarget:self action:@selector(refreshTableView) forControlEvents:UIControlEventValueChanged];
    self.refreshControl = refreshControl;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)refreshTableView
{
    if(self.refreshControl.refreshing){
        self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Loading"];
        NSDate *date = [NSDate date];
        [self performSelector:@selector(callBackRefresh:) withObject:date afterDelay:3];
    }
}

-(void)callBackRefresh: (id)date{
    [self.refreshControl endRefreshing];
    self.refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"Drag and Refresh"];
    [self.dateList insertObject:date atIndex:0];
    
    [self.tableView reloadData];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dateList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    NSDateFormatter *dateFormmat = [[NSDateFormatter alloc] init];
    [dateFormmat setDateFormat:@"HH:mm:ss"];
    
    cell.textLabel.text = [dateFormmat stringFromDate:[self.dateList objectAtIndex:indexPath.row]];
    
    return cell;
}

@end
