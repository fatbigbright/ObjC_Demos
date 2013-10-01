//
//  Subject.h
//  20131001.ObserverDemo
//
//  Created by Chang, Liang on 13-10-1.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observer;
@protocol Subject <NSObject>
@required
-(void)attachObserver: (Observer *) observer;
-(void)detachObserver: (Observer *) observer;
-(void)notifyObservers;

@end
