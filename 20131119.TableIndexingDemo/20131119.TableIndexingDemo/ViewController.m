//
//  ViewController.m
//  20131119.TableIndexingDemo
//
//  Created by Chang, Liang on 13-11-19.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSDictionary *teamDic;
@property (nonatomic, strong) NSArray *allSections;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *filePath = [bundle pathForResource:@"team_dictionary" ofType:@"plist"];
    
    self.teamDic = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    NSArray *tempKeys = [self.teamDic allKeys];
    
    self.allSections = [tempKeys sortedArrayUsingSelector:@selector(compare:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewController

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.allSections.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *currentKey = [self.allSections objectAtIndex:section];
    
    return [[self.teamDic objectForKey:currentKey] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    cell.textLabel.text = [[self.teamDic objectForKey:[self.allSections objectAtIndex:section]] objectAtIndex:row];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *sectionName = [self.allSections objectAtIndex:section];
    return sectionName;
}

//create index titles, method of UITableViewDataSource
-(NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    NSMutableArray *indexTitles = [[NSMutableArray alloc] initWithCapacity:self.allSections.count];
    for(NSString *item in self.allSections){
        NSString *title = [item substringToIndex:1];
        [indexTitles addObject:title];
    }
    
    return indexTitles;
}

@end
