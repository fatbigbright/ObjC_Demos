//
//  RootViewController.m
//  MultiViewDemo
//
//  Created by Chang, Liang on 13-1-24.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

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
}

-(void)pushSecondController{
    SecondViewController *secondViewController = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    secondViewController.rootViewController = self;
    [self.navigationController pushViewController:secondViewController animated:YES];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self performSelector:@selector(pushSecondController) withObject:nil afterDelay:3.0f];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setText:(NSString *)text{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 23.0f)];
    label.text = text;
    label.font = [UIFont boldSystemFontOfSize:14.0f];
    label.center = self.view.center;
    [self.view addSubview:label];
}

@end
