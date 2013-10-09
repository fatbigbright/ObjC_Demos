//
//  ProductViewController.h
//  20131009.ActivityIndicatorViewProgressViewDemo
//
//  Created by Chang, Liang on 13-10-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *myActivityIndicator;
@property (strong, nonatomic) IBOutlet UIProgressView *myProgressView;
@property (strong, nonatomic) IBOutlet UIButton *myDownload;

@end
