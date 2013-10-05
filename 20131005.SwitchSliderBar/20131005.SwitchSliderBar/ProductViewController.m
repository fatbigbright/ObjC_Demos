//
//  ProductViewController.m
//  20131005.SwitchSliderBar
//
//  Created by Chang, Liang on 13-10-5.
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
    
    //initialize slider value
    [self.SliderValue setText:[NSString stringWithFormat:@"%f", self.mySlider.value]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)ValueChanged:(id)sender {
    UISwitch *witchSwitch = (UISwitch *)sender;
    BOOL setting = witchSwitch.isOn;
    
    [self.LeftSwitch setOn:setting animated:YES];
    [self.RightSwitch setOn:setting animated:YES];
}
- (IBAction)sliderValueChanged:(id)sender {
    UISlider *witchSlider = (UISlider *)sender;
    NSString *sliderValueString = [NSString stringWithFormat:@"%f", witchSlider.value];
    [self.SliderValue setText:sliderValueString];
}
- (IBAction)segmentValueChanged:(id)sender {
    UISegmentedControl *witchSegmentControl = (UISegmentedControl *)sender;
    switch ([witchSegmentControl selectedSegmentIndex]) {
        case 0:
            self.LeftSwitch.hidden = NO;
            self.RightSwitch.hidden = YES;
            break;
        case 1:
            self.LeftSwitch.hidden = NO;
            self.RightSwitch.hidden = NO;
            break;
        case 2:
            self.LeftSwitch.hidden = YES;
            self.RightSwitch.hidden = NO;
            break;
        default:
            self.LeftSwitch.hidden = NO;
            self.RightSwitch.hidden = NO;
            break;
    }
}

@end
