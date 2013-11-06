//
//  DetailViewController.m
//  20131106.SplitViewDemo
//
//  Created by Chang, Liang on 13-11-6.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"blueViewController"];
    self.yellowViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"yellowViewController"];
    
    [self.view addSubview:self.blueViewController.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)updateView:(int)row{
    if (row == 0){
        if(self.yellowViewController.view.superview){
            [self.yellowViewController.view removeFromSuperview];
        }
        if(self.blueViewController.view.superview == nil){
            [self.view addSubview:self.blueViewController.view];
        }
    }
    else{
        if(self.blueViewController.view.superview){
            [self.blueViewController.view removeFromSuperview];
        }
        if(self.yellowViewController.view.superview == nil){
            [self.view addSubview:self.yellowViewController.view];
        }
    }
}

@end
