//
//  ViewController.m
//  20131029.PageControlNavigationDemo
//
//  Created by Chang, Liang on 13-10-29.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int currentPageIndex;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.frame = CGRectMake(0.0f, 0.0f, 320.0f, 528.0f);
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.pageViewController.delegate = self;
    self.pageViewController.dataSource = self;
    
    UIImageView *page1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pic1.png"]];
    
    UIViewController *page1Controller = [[UIViewController alloc] init];
    page1Controller.view = page1;
    
    NSArray *viewControllers = @[page1Controller];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
    
    [self.view addSubview:self.pageViewController.view];
    
    currentPageIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController{
    currentPageIndex--;
    if(currentPageIndex < 0){
        currentPageIndex = 0;
        return nil;
    }
    
    UIImageView *page = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"pic%i.png", currentPageIndex+1]]];
    
    UIViewController *pageController = [[UIViewController alloc] init];
    pageController.view = page;
    
    return pageController;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController{
    currentPageIndex++;
    if(currentPageIndex > 2){
        currentPageIndex = 2;
        return nil;
    }
    
    UIImageView *page = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"pic%i.png", currentPageIndex+1]]];
    
    UIViewController *pageController = [[UIViewController alloc] init];
    pageController.view = page;
    
    return pageController;
}

-(UIPageViewControllerSpineLocation)pageViewController:(UIPageViewController *)pageViewController spineLocationForInterfaceOrientation:(UIInterfaceOrientation)orientation{
    self.pageViewController.doubleSided = NO;
    return UIPageViewControllerSpineLocationMin;
    /*
    UIImageView *page1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pic1.png"]];
    UIViewController *page1Controller = [[UIViewController alloc] init];
    page1Controller.view = page1;
    
    UIImageView *page2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pic2.png"]];
    UIViewController *page2Controller = [[UIViewController alloc] init];
    page2Controller.view = page2;
    
    if(orientation == UIInterfaceOrientationLandscapeLeft || orientation == UIInterfaceOrientationLandscapeRight)
    {
        NSArray *viewControllers = @[page1Controller, page2Controller];
        [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
        self.pageViewController.doubleSided = NO;
        return UIPageViewControllerSpineLocationMid;
    }
    
    NSArray *viewControllers = @[page1Controller];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:NULL];
    
    [self.view addSubview:self.pageViewController.view];
    return UIPageViewControllerSpineLocationMin;
     */
}
@end
