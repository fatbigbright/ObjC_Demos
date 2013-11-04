//
//  DetailViewController.h
//  20131104.NavigationComboDemo
//
//  Created by Chang, Liang on 13-11-4.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;
@property (strong, nonatomic) NSString *pageTitle;
@property (strong, nonatomic) NSString *url;
@end
