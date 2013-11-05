//
//  ViewController.m
//  20131105.PopoverDemo
//
//  Created by Chang, Liang on 13-11-5.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"
#import "SelectViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)codeingShow:(id)sender {
    SelectViewController *popoverViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectViewController"];
    
    if(self.poc == nil){
        popoverViewController.title = @"Select your favorite color.";
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:popoverViewController];
        
        self.poc = [[UIPopoverController alloc] initWithContentViewController:nav];
    }
    [self.poc presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}
@end
