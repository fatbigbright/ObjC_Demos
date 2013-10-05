//
//  ProductViewController.h
//  20131005.SwitchSliderBar
//
//  Created by Chang, Liang on 13-10-5.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISwitch *LeftSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *RightSwitch;
@property (strong, nonatomic) IBOutlet UILabel *SliderValue;
@property (strong, nonatomic) IBOutlet UISlider *mySlider;

@end
