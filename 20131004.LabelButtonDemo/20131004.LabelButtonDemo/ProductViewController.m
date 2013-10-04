//
//  ProductViewController.m
//  20131004.LabelButtonDemo
//
//  Created by Chang, Liang on 13-10-4.
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

- (IBAction)onClick:(id)sender {
    self.myLabel.text = @"Hello LabelButtonDemo!!!!";
}
@end
