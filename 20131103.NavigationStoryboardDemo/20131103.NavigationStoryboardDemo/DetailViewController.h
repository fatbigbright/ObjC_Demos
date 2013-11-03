//
//  DetailViewController.h
//  20131101.NavigationDemo
//
//  Created by Chang, Liang on 13-11-2.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface DetailViewController : ViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;

@property (strong, nonatomic) NSString *url;
@end
