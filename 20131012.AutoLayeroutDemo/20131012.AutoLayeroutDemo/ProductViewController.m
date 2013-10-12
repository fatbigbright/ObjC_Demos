//
//  ProductViewController.m
//  20131012.AutoLayeroutDemo
//
//  Created by Chang, Liang on 13-10-12.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"
#import "LandscapeViewController.h"

#define deg2rad (3.1415926/180.0) 

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LandscapeViewController *landscapeViewController = [[UIStoryboard storyboardWithName:@"LandscapeStoryboard" bundle:NULL] instantiateViewControllerWithIdentifier:@"LandscapeViewController"];
    
    self.mainLandscapeView = landscapeViewController.view;
    self.mainPortraitView = self.view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotate{
    return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    if(toInterfaceOrientation == UIInterfaceOrientationLandscapeRight){
        self.view = self.mainLandscapeView;
        self.view.transform = CGAffineTransformMakeRotation(deg2rad * (90));
        self.view.bounds = CGRectMake(0.0, 0.0, 568, 300);//568 with 300 or 548 with 320?!!!
    } else if(toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        self.view = self.mainLandscapeView;
        self.view.transform = CGAffineTransformMakeRotation(deg2rad * (-90));
        self.view.bounds = CGRectMake(0.0, 0.0, 568, 300);
    } else {
        self.view = self.mainPortraitView;
        self.view.transform = CGAffineTransformMakeRotation(deg2rad * 0);
        self.view.bounds = CGRectMake(0.0, 0.0, 320, 548);
    }
    [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
}

@end
