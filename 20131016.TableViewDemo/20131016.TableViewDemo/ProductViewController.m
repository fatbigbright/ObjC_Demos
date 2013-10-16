//
//  ProductViewController.m
//  20131016.TableViewDemo
//
//  Created by Chang, Liang on 13-10-16.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController (){
    NSArray *listTeams;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"team" ofType:@"plist"];
    listTeams = [[NSArray alloc] initWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return listTeams.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowDict = [listTeams objectAtIndex:row];
    cell.textLabel.text = [rowDict objectForKey:@"name"];
    
    NSString *imagePath = [rowDict objectForKey:@"image"];
    imagePath = [imagePath stringByAppendingString:@".png"];
    cell.imageView.image = [UIImage imageNamed:imagePath];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

@end
