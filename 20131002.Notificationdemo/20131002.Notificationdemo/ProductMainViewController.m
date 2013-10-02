//
//  ProductMainViewController.m
//  20131002.NotificationDemo
//
//  Created by Chang, Liang on 13-10-2.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductMainViewController.h"

@interface ProductMainViewController ()

@end

@implementation ProductMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handelTerminate:) name:UIApplicationWillTerminateNotification object:nil];
}

-(void)dealloc
{
//    [[NSNotificationCenter defaultCenter] removeObject:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - handle notification

-(void)handelTerminate: (NSNotification *)notification
{
    NSDictionary *data = [notification userInfo];
    if(data != nil)
    {
        NSDate *date = [data objectForKey:@"TerminateDate"];
        NSLog(@"ProductMainViewController App Terminated Date: %@", date);
    }
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(ProductFlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
