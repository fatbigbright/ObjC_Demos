//
//  SecondViewController.m
//  MultiViewDemo
//
//  Created by Chang, Liang on 13-1-24.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "SecondViewController.h"
#import "RootViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self.rootViewController setText:@"Test Text."];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
