//
//  ProductViewController.h
//  20131008.KeyboardDemo
//
//  Created by Chang, Liang on 13-10-8.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIButton *myButton1;
@property (strong, nonatomic) IBOutlet UIButton *myButton2;
@property (strong, nonatomic) IBOutlet UIButton *myButton3;
@property (strong, nonatomic) IBOutlet UITextField *myTextField;
@property (strong, nonatomic) IBOutlet UIScrollView *myScrollView;

@end
