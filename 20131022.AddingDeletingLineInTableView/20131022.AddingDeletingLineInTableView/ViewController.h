//
//  ViewController.h
//  20131022.AddingDeletingLineInTableView
//
//  Created by Chang, Liang on 13-10-22.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <UIKit/UIKit.h>

//TableView is sub view of view, so this controller should not inherits from UITableViewController
@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@property (strong, nonatomic) IBOutlet UINavigationItem *myNavigationItem;
@property (strong, nonatomic) IBOutlet UITextField *myTextField;
@property (strong, nonatomic) NSMutableArray *listTeams;
@end
