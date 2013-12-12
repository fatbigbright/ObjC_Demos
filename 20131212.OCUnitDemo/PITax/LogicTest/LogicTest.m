//
//  LogicTest.m
//  LogicTest
//
//  Created by Chang, Liang on 13-12-12.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "LogicTest.h"

@implementation LogicTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
    self.viewController = [[ViewController alloc] init];
}

- (void)tearDown
{
    // Tear-down code here.
    self.viewController = nil;
    
    [super tearDown];
}

-(void)testCalculateLevel1{
    double dbRevenue = 5000;
    NSString *strRevenue = [NSString stringWithFormat:@"%f", dbRevenue];
    NSString *strTax = [self.viewController calculate: strRevenue];
    STAssertTrue([strTax doubleValue] == 45, @"Assue result is 45, actual result is %@", strTax);
}
//
//- (void)testExample
//{
//    STFail(@"Unit tests are not implemented yet in LogicTest");
//}

@end
