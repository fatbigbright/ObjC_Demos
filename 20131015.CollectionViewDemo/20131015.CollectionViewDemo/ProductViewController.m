//
//  ProductViewController.m
//  20131015.CollectionViewDemo
//
//  Created by Chang, Liang on 13-10-15.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"
#import "Cell.h"

@interface ProductViewController (){
    NSArray *events;
}

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"events" ofType:@"plist"];
    
    NSArray *array = [[NSArray alloc] initWithContentsOfFile:plistPath];
    events = array;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return events.count / 2;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    Cell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSDictionary *event = [events objectAtIndex:(indexPath.section * 2 + indexPath.row)];
    cell.label.text = [event objectForKey:@"name"];
    cell.imageView.image = [UIImage imageNamed:[event objectForKey:@"image"]];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *event = [events objectAtIndex:(indexPath.section * 2 + indexPath.row)];
    NSLog(@"select event name: %@", [event objectForKey:@"name"]);
}

@end
