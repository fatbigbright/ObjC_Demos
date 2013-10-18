//
//  ViewController.m
//  20131018.TableViewSearchBarDemo
//
//  Created by Chang, Liang on 13-10-18.
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
    NSString *plistPath = [bundle pathForResource:@"team" ofType:@"plist"];
    self.listTeams = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    [self filterContentForSearchText:@"" scope:-1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterContentForSearchText:(NSString *)searchText scope:(NSUInteger)scope{
    if(searchText.length <= 0){
        self.listFilterTeams = [[NSMutableArray alloc] initWithArray:self.listTeams];
        return;
    }
    NSPredicate *scopePredicate;
    NSArray *tempArray;
    
    switch (scope) {
        case 0:
            scopePredicate = [NSPredicate predicateWithFormat:@"SELF.name contains[c] %@", searchText];
            tempArray = [self.listTeams filteredArrayUsingPredicate:scopePredicate];
            self.listFilterTeams = [[NSMutableArray alloc] initWithArray:tempArray];
            break;
        case 1:
            scopePredicate = [NSPredicate predicateWithFormat:@"SELF.image contains[c] %@", searchText];
            tempArray = [self.listTeams filteredArrayUsingPredicate:scopePredicate];
            self.listFilterTeams = [[NSMutableArray alloc] initWithArray:tempArray];
            break;
        default:
            self.listFilterTeams = [[NSMutableArray alloc] initWithArray:self.listTeams];
            break;
    }
}

#pragma mark - UISearchBarDelegate, UISearchDisplayDelegate
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString{
    [self filterContentForSearchText:searchString scope:self.searchBar.selectedScopeButtonIndex];
    return YES;
}

-(void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    [self filterContentForSearchText:@"" scope:-1];
}

#pragma mark - UITableViewDataSource, UITableViewDelegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listFilterTeams.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cellidentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //No cell definded in Storyboard, so it will be created by obj code below
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    NSUInteger row = indexPath.row;
    NSDictionary *rowDict = [self.listFilterTeams objectAtIndex:row];
    cell.textLabel.text = [rowDict objectForKey:@"name"];
    cell.detailTextLabel.text = [rowDict objectForKey:@"image"];
    
    cell.imageView.image = [UIImage imageNamed:[[rowDict objectForKey:@"image"] stringByAppendingString:@".png"]];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

@end
