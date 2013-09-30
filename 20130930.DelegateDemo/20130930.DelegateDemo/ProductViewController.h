//
//  ProductViewController.h
//  20130930.DelegateDemo
//
//  Created by Chang, Liang on 13-9-30.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
