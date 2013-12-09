//
//  ViewController.m
//  PresentationLayer
//
//  Created by Chang, Liang on 13-12-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.nameField.delegate = self;
    self.descriptionField.delegate = self;
    self.descriptionField.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showText:(id)sender {
    NSString *name = self.nameField.text;
    NSString *description = self.descriptionField.text;
    
    Model *model = [[Model alloc] init];
    model.Name = name;
    model.Description = description;
    self.text.text = [model DoSomething];
}

#pragma mark - UITextDelegate Delegate Method
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - UITextViewDelegate Delegate Method
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    if([text isEqualToString:@"\n"]){
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}
@end
