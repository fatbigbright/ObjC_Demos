//
//  ViewController.m
//  20131101.NavigationDemo
//
//  Created by Chang, Liang on 13-11-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ViewController.h"
#import "CitiesViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *path = [bundle pathForResource:@"provinces_cities" ofType:@"plist"];
    
    self.cities = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.provinces = [self.cities allKeys];
    
    self.title = @"东三省";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.provinces.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [self.provinces objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    CitiesViewController *citiesViewController = [[CitiesViewController alloc] init];
    NSString *selectedProvince = [self.provinces objectAtIndex:indexPath.row];
    citiesViewController.title = selectedProvince;
    citiesViewController.cities = [self.cities objectForKey:selectedProvince];
    
    [self.navigationController pushViewController:citiesViewController animated:YES];
}

@end
