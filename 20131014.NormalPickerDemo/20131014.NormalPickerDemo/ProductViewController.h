//
//  ProductViewController.h
//  20131014.NormalPickerDemo
//
//  Created by Chang, Liang on 13-10-14.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *myPicker;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;

@end
