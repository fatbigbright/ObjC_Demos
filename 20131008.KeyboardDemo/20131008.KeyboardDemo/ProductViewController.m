//
//  ProductViewController.m
//  20131008.KeyboardDemo
//
//  Created by Chang, Liang on 13-10-8.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController (){
    BOOL keyBoardVisible;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //self.myScrollView.delegate = self;
    //self.myTextField.delegate = self;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated{
    [self.myScrollView setContentSize:CGSizeMake(320, 800)];
    [self.myScrollView setContentOffset:CGPointMake(0, 100) animated:YES];
    [super viewDidAppear:YES];
}

#pragma mark - UITextField methods
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self.myTextField resignFirstResponder];
    return YES;
}

-(void)keyboardDidShow: (NSNotification *)notification{
    NSLog(@"Observer successfully sent the notification.");
    if(keyBoardVisible)
        return;
    
    //Get size of keyboard
    NSDictionary *info = [notification userInfo];
    NSValue *keyboardSizeValue = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGSize keyboardSize = [keyboardSizeValue CGRectValue].size;
    
    //re-define size of scrollview
    CGRect viewFrame = self.myScrollView.frame;
    viewFrame.size.height -= keyboardSize.height;
    self.myScrollView.frame = viewFrame;
    
    //Scroll to the textField
    CGRect textFieldFrame = self.myTextField.frame;
    [self.myScrollView scrollRectToVisible:textFieldFrame animated:YES];
    
    keyBoardVisible = YES;
}
-(void)keyboardDidHide: (NSNotification *)notification{
    NSDictionary *info = [notification userInfo];
    NSValue *keyboardSizeValue = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGSize keyboardSize = [keyboardSizeValue CGRectValue].size;
    
    CGRect viewFrame = self.myScrollView.frame;
    viewFrame.size.height += keyboardSize.height;
    self.myScrollView.frame = viewFrame;
    
//    CGRect textFieldFrame = self.myTextField.frame;
//    [self.myScrollView scrollRectToVisible:textFieldFrame animated:YES];
    if (keyBoardVisible) {
        keyBoardVisible = NO;
    }
}

@end
