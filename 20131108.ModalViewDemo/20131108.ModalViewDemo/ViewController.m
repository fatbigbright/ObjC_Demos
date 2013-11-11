//
//  ViewController.m
//  20131108.ModalViewDemo
//
//  Created by Chang, Liang on 13-11-9.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

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
//- (IBAction)onclick:(id)sender {
//    ModalViewController *modalViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"modalViewController"];
//    modalViewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    switch (self.segControl.selectedSegmentIndex) {
//        case 0:
//            modalViewController.modalPresentationStyle = UIModalPresentationFullScreen;
//            break;
//        case 1:
//            modalViewController.modalPresentationStyle = UIModalPresentationPageSheet;
//            break;
//        case 2:
//            modalViewController.modalPresentationStyle = UIModalPresentationFormSheet;
//            break;
//        case 3:
//            modalViewController.modalPresentationStyle = UIModalPresentationCurrentContext;
//        default:
//            break;
//    }
//    
//    [self presentViewController:modalViewController animated:YES completion:nil];
//}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"modal"]){
        UIViewController *destination = segue.destinationViewController;
        destination.view.backgroundColor = [UIColor blueColor];
        switch (self.segControl.selectedSegmentIndex) {
            case 0:
                destination.modalPresentationStyle = UIModalPresentationFullScreen;
                break;
            case 1:
                destination.modalPresentationStyle = UIModalPresentationPageSheet;
                break;
            case 2:
                destination.modalPresentationStyle = UIModalPresentationFormSheet;
                break;
            case 3:
                destination.modalPresentationStyle = UIModalPresentationCurrentContext;
            default:
                break;
        }
    }
}

@end
