/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 OTS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

//
//  CheckerTests.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import <XCTest/XCTest.h>
#import "CheckerResourceImpl.h"

@interface CheckerTests : XCTestCase

@end

@implementation CheckerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void) testCheckNumber{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CheckerResourceImpl *impl = [[CheckerResourceImpl alloc] init];
        [impl initializeCheckerResourceImpl:appSid];
        
        //param
        NSString *recipient = @"962789309519";
        
        //send message id status
        CheckerCheckNumberResponse *response = [impl checkNumber:recipient];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing checker check number successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed checker check number code");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

@end
