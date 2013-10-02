//
//  ProductFlipsideViewController.h
//  20131002.NotificationDemo
//
//  Created by Chang, Liang on 13-10-2.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ProductFlipsideViewController;

@protocol ProductFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(ProductFlipsideViewController *)controller;
@end

@interface ProductFlipsideViewController : UIViewController

@property (weak, nonatomic) id <ProductFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
