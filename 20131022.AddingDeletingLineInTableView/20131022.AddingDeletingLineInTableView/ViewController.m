//
//  ViewController.m
//  20131022.AddingDeletingLineInTableView
//
//  Created by Chang, Liang on 13-10-22.
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
    self.myNavigationItem.title = @"Insert or delete a cell";
    
    self.myTextField.hidden = YES;
    self.myTextField.delegate = self;
    
    self.myTableView.dataSource = self;
    self.myTableView.delegate = self;
    
    self.listTeams = [[NSMutableArray alloc] initWithObjects:@"AAAAA", @"BBBBB", @"CCCCC", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.listTeams.count + 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BOOL b_addCell = (indexPath.row == self.listTeams.count);
    
    NSString *cellIdentifier = @"CellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    //if it is not the new line
    if(!b_addCell){
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        cell.textLabel.text = [self.listTeams objectAtIndex:indexPath.row];
    }
    else{
        self.myTextField.frame = CGRectMake(10, 0, 300, 44);
        self.myTextField.text = @"";
        [cell.contentView addSubview:self.myTextField];
    }
    
    return cell;
}

-(void)setEditing:(BOOL)editing animated:(BOOL)animated{
    [super setEditing:editing animated:animated];
    
    [self.myTableView setEditing:editing animated:YES];
    
    if(editing){
        self.myTextField.hidden = NO;
    }
    else{
        self.myTextField.hidden = YES;
    }
}

//New line has the adding icon, while existing lines have deleing icon
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == self.listTeams.count){
        return UITableViewCellEditingStyleInsert;
    }
    else{
        return UITableViewCellEditingStyleDelete;
    }
}

//Adding/Deleting line
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.listTeams removeObjectAtIndex:indexPath.row];
        [self.myTableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.myTableView reloadData];
    }
    else if(editingStyle == UITableViewCellEditingStyleInsert){
        [self.listTeams insertObject:self.myTextField.text atIndex:[self.listTeams count]];
        [self.myTableView insertRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.myTableView reloadData];
    }
}

-(BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    //The last line which is for adding new line should not be highlighted
    if(indexPath.row == self.listTeams.count){
        return NO;
    }
    else{
        return YES;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

//Press Return to close keyboard
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

//keep the input field from overlapped by keyboard
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    UITableViewCell *cell = (UITableViewCell*)[[textField superview] superview];
    [self.myTableView setContentOffset:CGPointMake(0.0, cell.frame.origin.y) animated:YES];
}

@end
