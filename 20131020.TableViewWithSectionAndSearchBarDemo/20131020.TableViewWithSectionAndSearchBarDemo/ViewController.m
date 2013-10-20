//
//  ViewController.m
//  20131020.TableViewWithSectionAndSearchBarDemo
//
//  Created by Chang, Liang on 13-10-20.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSDictionary *dictData;
    NSMutableDictionary *filterDictData;
    NSArray *listGroupName;
    NSArray *filterListGroupName;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"team_dictionary" ofType:@"plist"];
    dictData = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    listGroupName = [[dictData allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    [self filterContentForSearchText:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterContentForSearchText:(NSString *)searchText{
    if(searchText.length <= 0){
        filterDictData = [[NSMutableDictionary alloc] initWithDictionary:dictData];
        filterListGroupName = [[filterDictData allKeys] sortedArrayUsingSelector:@selector(compare:)];
        return;
    }
    
    NSPredicate *searchPredicate;
    
    searchPredicate = [NSPredicate predicateWithFormat:@"SELF contains[c] %@", searchText];
    
    filterDictData = [[NSMutableDictionary alloc] init];
    
    NSArray *keys = [dictData allKeys];
    NSMutableArray *tempArray;
    for(NSString *key in keys){
        tempArray = [[NSMutableArray alloc] initWithArray:[[dictData objectForKey:key] filteredArrayUsingPredicate:searchPredicate]];
        
        if(tempArray.count > 0)
            [filterDictData setObject:tempArray forKey:key];
    }
    filterListGroupName = [[filterDictData allKeys] sortedArrayUsingSelector:@selector(compare:)];
}

#pragma mark - UISearchBar
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    [self filterContentForSearchText:searchString];
    return YES;
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self filterContentForSearchText:@""];
}

#pragma mark = UITableView
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return filterListGroupName.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *groupName = [filterListGroupName objectAtIndex:section];
    NSArray *listTeams = [filterDictData objectForKey:groupName];
    return listTeams.count;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *groupName = [filterListGroupName objectAtIndex:section];
    return groupName;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *groupName = [filterListGroupName objectAtIndex:section];
    NSArray *listTeam = [filterDictData objectForKey:groupName];
    cell.textLabel.text = [listTeam objectAtIndex:row];
    
    return cell;
}

//create index
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    NSMutableArray *listTitles = [[NSMutableArray alloc] initWithCapacity:filterListGroupName.count];
    for (NSString *item in filterListGroupName) {
        NSString *title = [item substringToIndex:1];
        [listTitles addObject:title];
    }
    return listTitles;
}

@end
