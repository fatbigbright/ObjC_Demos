//
//  Child.h
//  ProtocolDemo00
//
//  Created by Chang, Liang on 12-11-10.
//  Copyright (c) 2012年 Chang, Liang. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Parent

-(void)DoSomething;

@end

@interface Child1 :NSObject <Parent>{
     
}

@end

@interface Child2 : NSObject <Parent>{
    
}
@end
