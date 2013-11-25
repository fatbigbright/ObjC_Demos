//
//  main.m
//  20131125.HanoiTowerDemo
//
//  Created by Chang, Liang on 13-11-25.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

void MoveTower(int level, int source, int destination);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        MoveTower(4, 1, 3);
    }
    return 0;
}

void MoveTower(int level, int source, int destination)
{
    if(level < 1)
    {
        return;
    }
    else if(level == 1)
    {
        NSLog(@"Move from %d to %d", source, destination);
        return;
    }
    else{
        MoveTower(level - 1, source, 6 - source - destination);//Move to another
        NSLog(@"Move from %d to %d", source, destination);
        MoveTower(level - 1, 6 - source - destination, destination);
    }
}