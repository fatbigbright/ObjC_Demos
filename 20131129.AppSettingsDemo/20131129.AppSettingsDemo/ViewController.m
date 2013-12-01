//
//  ViewController.m
//  20131129.AppSettingsDemo
//
//  Created by Chang, Liang on 13-11-29.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *userName;
@property (strong, nonatomic) IBOutlet UILabel *passWord;
@property (strong, nonatomic) IBOutlet UILabel *clearCache;
@property (strong, nonatomic) IBOutlet UILabel *flowControl;
@property (strong, nonatomic) IBOutlet UILabel *server;
@property (strong, nonatomic) IBOutlet UILabel *sound;
@property (strong, nonatomic) IBOutlet UILabel *vibration;
- (IBAction)loadSettings:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self loadSettings:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loadSettings:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    self.userName.text = [defaults stringForKey:@"name_preference"];
    
    self.passWord.text = [defaults stringForKey:@"password_reference"];
    
    self.clearCache.text = [defaults boolForKey:@"enabled_preference"] ? @"YES" : @"NO";
    
    self.flowControl.text = [NSString stringWithFormat:@"%.2fGB", [defaults doubleForKey:@"slider_preference"]];
    
    self.server.text = [defaults stringForKey:@"multi_value_preference"];
    
    self.sound.text = [defaults boolForKey:@"sound_enabled_preference"] ? @"YES" : @"NO";
    
    self.vibration.text = [defaults boolForKey:@"vibrate_enabled_preference"] ? @"YES" : @"NO";
}
@end
