//
//  ViewController.m
//  20131116.TableViewDemo
//
//  Created by Chang, Liang on 13-11-16.
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
    [self.searchBar setShowsScopeBar:NO];
    [self.searchBar sizeToFit];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *filePath = [bundle pathForResource:@"team" ofType:@"plist"];
    
    self.teamlist = [[NSArray alloc] initWithContentsOfFile:filePath];
    [self filterContentForSearchText: @""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterContentForSearchText:(NSString *)searchText{
    if(searchText.length <= 0){
        self.filterdTeamlist = [[NSMutableArray alloc] initWithArray:self.teamlist];
        return;
    }
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.name contains[c] %@", searchText];
    
    self.filterdTeamlist = [[NSMutableArray alloc] initWithArray:[self.teamlist filteredArrayUsingPredicate:predicate]];
}

#pragma mark - UISearchBarDelegate, UISearchDisplayDelegate
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    [self filterContentForSearchText:searchString];
    return YES;
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self filterContentForSearchText:@""];
}


#pragma mark - UITableDataSource, UITableDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.filterdTeamlist.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    NSDictionary *currentTeam = [self.filterdTeamlist objectAtIndex:[indexPath row]];
    cell.textLabel.text = [currentTeam objectForKey:@"name"];
    cell.imageView.image = [UIImage imageNamed:[currentTeam objectForKey:@"image"]];
    
    return cell;
}

@end
