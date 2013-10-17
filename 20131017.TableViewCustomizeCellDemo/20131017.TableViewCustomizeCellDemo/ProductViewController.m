//
//  ProductViewController.m
//  20131017.TableViewCustomizeCellDemo
//
//  Created by Chang, Liang on 13-10-17.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"
#import "Cell.h"

@interface ProductViewController (){
    NSArray *teamList;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"team" ofType:@"plist"];
    teamList = [[NSArray alloc] initWithContentsOfFile:plistPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return teamList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"CellIdentifier";
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSUInteger row = [indexPath row];
    NSDictionary *rowDict = [teamList objectAtIndex:row];
    cell.myLabel.text = [rowDict objectForKey:@"name"];
    cell.myImageView.image = [UIImage imageNamed:[[rowDict objectForKey:@"image"] stringByAppendingString:@".png"]];
    
    //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

@end
