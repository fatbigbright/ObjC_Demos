//
//  ViewController.m
//  20131021.StaticTableViewDemo
//
//  Created by Chang, Liang on 13-10-21.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)login:(id)sender {
    if([self.userName.text isEqual:@"fbb"] && [self.passWord.text isEqual:@"admin"]){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Log on" message:@"Log on succesfully!!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        [self.userName resignFirstResponder];
        [self.passWord resignFirstResponder];
    }
}

@end
