//
//  ProductViewController.m
//  20131014.NormalPickerDemo
//
//  Created by Chang, Liang on 13-10-14.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController (){
    NSDictionary *pickerData;
    NSArray *pickerProvinceData;
    NSArray *pickerCityData;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"provinces_cities" ofType:@"plist"];
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    pickerData = dictionary;
    
    pickerProvinceData = [pickerData allKeys];
    
    NSString *selectedProvince = [pickerProvinceData objectAtIndex:0];
    pickerCityData = [pickerData objectForKey:selectedProvince];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onclick:(id)sender {
    NSInteger rowProvince = [self.myPicker selectedRowInComponent:0];
    NSInteger rowCity = [self.myPicker selectedRowInComponent:1];
    
    NSString *selectedPrivince = [pickerProvinceData objectAtIndex:rowProvince];
    NSString *selectedCity = [pickerCityData objectAtIndex:rowCity];
    
    NSString *title = [[NSString alloc] initWithFormat:@"%@, %@", selectedPrivince, selectedCity];
    
    self.myLabel.text = title;
}

#pragma mark - methods of UIPickerDataSource
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return [pickerProvinceData count];
    }else{
        return [pickerCityData count];
    }
}

#pragma mark - methods of UIPickerDelegate
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(component == 0){
        return [pickerProvinceData objectAtIndex:row];
    }
    else{
        return [pickerCityData objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if(component == 0){
        NSString *selectedProvince = [pickerProvinceData objectAtIndex:row];
        NSArray *cities = [pickerData objectForKey:selectedProvince];
        pickerCityData = cities;
        [self.myPicker reloadComponent:1];
    }
}

@end
