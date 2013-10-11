//
//  ProductViewController.m
//  20131011.ToolBarNavigationBarDemo
//
//  Created by Chang, Liang on 13-10-11.
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
- (IBAction)save:(id)sender {
    self.statusLabel.text = @"Save on Tool Bar";
}
- (IBAction)open:(id)sender {
    self.statusLabel.text = @"Open on Tool Bar";
}
- (IBAction)naviSave:(id)sender {
    self.statusLabel.text = @"Save on Navigation Bar";
}
- (IBAction)naviAdd:(id)sender {
    self.statusLabel.text = @"Add on Navigation Bar";
}

@end
