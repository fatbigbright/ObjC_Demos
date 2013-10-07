//
//  ProductViewController.m
//  20131007.ScrollViewDemo
//
//  Created by Chang, Liang on 13-10-7.
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
    //[self.myScrollView setScrollEnabled:YES];
    //self.myScrollView.contentSize = CGSizeMake(320, 700);
    [self.myScrollView setContentSize:CGSizeMake(320, 700)];
}

-(void)viewDidAppear:(BOOL)animated{
    [self.myScrollView setContentOffset:CGPointMake(0, 100) animated:YES];
    [super viewDidAppear:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
