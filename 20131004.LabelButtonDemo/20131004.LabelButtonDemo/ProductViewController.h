//
//  ProductViewController.h
//  20131004.LabelButtonDemo
//
//  Created by Chang, Liang on 13-10-4.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)onClick:(id)sender;

@end
