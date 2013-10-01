//
//  ConcreteSubject.m
//  20131001.ObserverDemo
//
//  Created by Chang, Liang on 13-10-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ConcreteSubject.h"
#import "Observer.h"

@implementation ConcreteSubject{
    NSMutableArray* observers;
}

static ConcreteSubject* sharedConcreteSubject = nil;

-(id)init{
    observers = [[NSMutableArray alloc] init];
    return self;
}

+(ConcreteSubject *)sharedConcreteSubject{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedConcreteSubject = [[self alloc] init];
    });
    
    return sharedConcreteSubject;
}

-(void)attachObserver:(Observer *)observer{
    [observers addObject:observer];
}

-(void)detachObserver:(Observer *)observer{
    [observers removeObject:observer];
}

-(void)notifyObservers{
    for(id obs in observers){
        if ([obs conformsToProtocol:@protocol(Observer)]) {
            [obs update];
        }
    }
}

@end
