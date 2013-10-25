//
//  ViewController.m
//  20131025.ModalTransitionDemo
//
//  Created by Chang, Liang on 13-10-25.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(registerCompletion:) name:@"RegisterCompletionNotification" object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)registerCompletion: (NSNotification *)notification{
    NSDictionary *data = [notification userInfo];
    NSString *userName = [data objectForKey:@"username"];
    
    self.userNameTextField.text = userName;
}

- (IBAction)regonclick:(id)sender {
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
    
    UIViewController *registerViewController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"registerViewController"];
    
    registerViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [self presentViewController:registerViewController animated:YES completion:^{
        NSLog(@"Present Modal View.");
    }];
    
}
@end
