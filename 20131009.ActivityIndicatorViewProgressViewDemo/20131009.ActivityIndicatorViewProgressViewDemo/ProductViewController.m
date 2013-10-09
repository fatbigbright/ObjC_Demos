//
//  ProductViewController.m
//  20131009.ActivityIndicatorViewProgressViewDemo
//
//  Created by Chang, Liang on 13-10-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController (){
    NSTimer *myTimer;
    UIColor *baseButtonColor;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myProgressView.progress = 0;
    baseButtonColor = self.myDownload.titleLabel.textColor;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)EnableDownloadButton{
    [self.myDownload setEnabled:YES];
    [self.myDownload setTitleColor:baseButtonColor forState:UIControlStateNormal];
}

-(void)DisableDownloadButton{
    [self.myDownload setEnabled:NO];
    [self.myDownload setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
}

- (IBAction)onDownload:(id)sender {
    self.myProgressView.progress = 0;
    if(!self.myActivityIndicator.isAnimating){
        [self.myActivityIndicator startAnimating];
    }
    [self DisableDownloadButton];
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(download) userInfo:nil repeats:YES];
    
}

-(void)download{
    self.myProgressView.progress += 0.1;
    if(self.myProgressView.progress >= 1.0)
    {
        [myTimer invalidate];
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Download Completed" message:@"" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
        [self EnableDownloadButton];
        if(self.myActivityIndicator.isAnimating){
            [self.myActivityIndicator stopAnimating];
        }
    }
}
@end
