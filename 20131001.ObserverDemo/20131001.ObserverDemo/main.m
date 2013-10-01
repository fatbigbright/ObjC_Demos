//
//  main.m
//  20131001.ObserverDemo
//
//  Created by Chang, Liang on 13-10-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteSubject.h"
#import "ConcreteObserver_A.h"
#import "ConcreteObserver_B.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        // NSLog(@"Hello, World!");
        
        id concreteSubject = [ConcreteSubject sharedConcreteSubject];
        
        id concreteObserverA = [[ConcreteObserver_A alloc] init];
        id concreteObserverB = [[ConcreteObserver_B alloc] init];
        [concreteSubject attachObserver:concreteObserverA];
        [concreteSubject attachObserver:concreteObserverB];
        
        [concreteSubject notifyObservers];
    }
    return 0;
}

