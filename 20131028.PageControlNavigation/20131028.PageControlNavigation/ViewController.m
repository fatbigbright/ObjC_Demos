//
//  ViewController.m
//  20131028.PageControlNavigation
//
//  Created by Chang, Liang on 13-10-28.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width*3, self.scrollView.frame.size.height);
    self.scrollView.frame = self.view.frame;
    
    UIImageView *page1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"保罗克利-肖像.png"]];
    page1.frame = CGRectMake(0.0f, 0.0f, 320.0f, 420.0f);
    UIImageView *page2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"罗丹-思想者.png"]];
    page2.frame = CGRectMake(320.0f, 0.0f, 320.0f, 420.0f);
    UIImageView *page3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"达芬奇-蒙娜丽莎.png"]];
    page3.frame = CGRectMake(640.0f, 0.0f, 320.0f, 420.0f);
    
    self.scrollView.delegate = self;
    
    [self.scrollView addSubview:page1];
    [self.scrollView addSubview:page2];
    [self.scrollView addSubview:page3];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGPoint offset = scrollView.contentOffset;
    self.pageControl.currentPage = offset.x/320.0f;
}

- (IBAction)changePage:(id)sender {
    [UIView animateWithDuration:0.3f animations:^{
        int whichPage = self.pageControl.currentPage;
        self.scrollView.contentOffset = CGPointMake(320.0f * whichPage, 0.0f);
    }];
    
}
@end
