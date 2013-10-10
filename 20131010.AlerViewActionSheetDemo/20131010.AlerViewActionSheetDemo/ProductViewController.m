//
//  ProductViewController.m
//  20131010.AlerViewActionSheetDemo
//
//  Created by Chang, Liang on 13-10-10.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)testAlertView:(id)sender {
    UIAlertView *multiButtonAlertView = [[UIAlertView alloc] initWithTitle:@"Title" message:@"Test AlerView!!" delegate:self cancelButtonTitle:@"Index 0" otherButtonTitles:@"Index 1", nil];
    
    [multiButtonAlertView show];
}
- (IBAction)testActionSheet:(id)sender {
    UIActionSheet *multiButtonActionSheet = [[UIActionSheet alloc] initWithTitle:@"Action Sheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"You will regret!" otherButtonTitles:@"Another Choice", nil];
    
    multiButtonActionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;
    
    [multiButtonActionSheet showInView:self.view];
}

#pragma mark - UIAlertView
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"AlertView Button of index %d has been clicked.", buttonIndex);
}

#pragma mark - UIActionSheet
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"ActionSheet Button of index %d has been clicked.", buttonIndex);
}

@end
