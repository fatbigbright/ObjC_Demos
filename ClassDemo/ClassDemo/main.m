//
//  main.m
//  ClassDemo
//
//  Created by Chang, Liang on 13-9-25.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoObject.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        DemoObject *demo = [[DemoObject alloc]initWithIdentity:10 AndName:@"Test Demo"];
        
        NSLog(@"The Demo object information: identity: %ld, name: %@", [demo GetIdentity], [demo GetName]);
    }
    return 0;
}

