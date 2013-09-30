//
//  ProductViewController.m
//  20130930.DelegateDemo
//
//  Created by Chang, Liang on 13-9-30.
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
    //在故事板中将ViewController的delegate与textField相连接
    //也可以获得和下面这行语句相同的效果。
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -- UITextFieldDelegate methods
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"call textFieldShouldBeginEditing");
    return YES;
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    NSLog(@"call textFieldDidBeginEditing");
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    NSLog(@"call textFieldDidEndEditing");
}
-(BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    NSLog(@"call textFieldShouldEndEditing");
    return YES;
}

//Asks the delegate if the text field should process the pressing of the return button.
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@"call textFieldShouldReturn");
    [textField resignFirstResponder];
    return YES;
}

@end
