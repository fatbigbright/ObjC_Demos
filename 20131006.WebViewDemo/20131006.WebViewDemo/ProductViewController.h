//
//  ProductViewController.h
//  20131006.WebViewDemo
//
//  Created by Chang, Liang on 13-10-6.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController<UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *myWebView;

@end
