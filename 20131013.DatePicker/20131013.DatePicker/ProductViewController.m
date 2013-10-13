//
//  ProductViewController.m
//  20131013.DatePicker
//
//  Created by Chang, Liang on 13-10-13.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender {
    NSDate *theDate = self.myDatePicker.date;
    NSLog(@"date picked is : %@", [theDate descriptionWithLocale:[NSLocale currentLocale]]);
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    [dateFormater setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSLog(@"the date format is : %@", [dateFormater stringFromDate:theDate]);
    self.myLabel.text = [dateFormater stringFromDate:theDate];
}

@end
