//
//  ViewController.m
//  20131023.MoveTableViewLineDemo
//
//  Created by Chang, Liang on 13-10-23.
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
    self.myNavigationItem.rightBarButtonItem = self.editButtonItem;
    self.myNavigationItem.title = @"Moving Cell";
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    self.listItems = [[NSMutableArray alloc] initWithObjects:@"AAA", @"BBB", @"CCC", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listItems.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.text = [self.listItems objectAtIndex:indexPath.row];
    }
    
    return cell;
}

-(void)setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:editing animated:animated];
    
    [self.myTableView setEditing:editing animated:YES];
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleNone;
}

-(BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    NSString *stringToMove = [self.listItems objectAtIndex:sourceIndexPath.row];
    [self.listItems removeObjectAtIndex:sourceIndexPath.row];
    [self.listItems insertObject:stringToMove atIndex:destinationIndexPath.row];
}

@end
