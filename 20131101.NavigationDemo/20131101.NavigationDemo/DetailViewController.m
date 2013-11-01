//
//  DetailViewController.m
//  20131101.NavigationDemo
//
//  Created by Chang, Liang on 13-11-2.
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
    self.myWebView = [[UIWebView alloc] init];
    self.myWebView.delegate = self;
    [self.view addSubview:self.myWebView];
    NSURL *url = [NSURL URLWithString:self.url];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.myWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWebView

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"finish");
}

-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"%@", error.description);
}

@end
