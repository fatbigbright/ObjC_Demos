//
//  ViewController.m
//  20131019.TableViewWithSectionsDemo
//
//  Created by Chang, Liang on 13-10-20.
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
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"team_dictionary" ofType:@"plist"];
    self.dictData = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    NSArray *tempList = [self.dictData allKeys];
    
    self.listGroupName = [tempList sortedArrayUsingSelector:@selector(compare:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterContentForSearchText:(NSString *)searchText scope:(NSUInteger)scope{
    
}

#pragma mark - UITableViewDelegate, UITableViewDataSource
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *groupName = [self.listGroupName objectAtIndex:section];
    NSArray *listTeams = [self.dictData objectForKey:groupName];
    return listTeams.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    NSString *groupName = [self.listGroupName objectAtIndex:section];
    NSArray *listTeams = [self.dictData objectForKey:groupName];
    cell.textLabel.text = [listTeams objectAtIndex:row];
    return cell;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.listGroupName.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *groupName = [self.listGroupName objectAtIndex:section];
    return groupName;
}

//creating indexes
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    NSMutableArray *listTitles = [[NSMutableArray alloc] initWithCapacity:self.listGroupName.count];
    for(NSString *item in self.listGroupName){
        NSString *title = [item substringToIndex:1];
        [listTitles addObject:title];
    }
    return listTitles;
}

@end
