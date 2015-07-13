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
//  CallTests.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import <XCTest/XCTest.h>
#import "CallResourceImpl.h"
#import "CallRequest.h"
#import "CallResponse.h"
#import "CallStatusResponse.h"
#import "CallsDetailsResponse.h"
#import "CallsDetailsRequest.h"
#import "CallTTSRequest.h"
#import "CallTTSResponse.h"
#import "CallGetScheduledRequest.h"
#import "CallGetScheduledResponse.h"
#import "CallStopScheduledResponse.h"
#import "CallsDetailsData.h"

@interface CallTests : XCTestCase

@end

@implementation CallTests

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

-(void) testCall{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //param
        NSString *recipient = @"962789309519";
        NSString *content = @"https://voiceusa.s3.amazonaws.com/voiceWavFiles1423399184883.wav";
        
        //send message id status
        CallResponse *response = [impl call:recipient withContent:content];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing call successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed call");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testGetCallIDStatus{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //param
        NSString *callID = @"962789309519";
        
        //send message id status
        CallStatusResponse *response = [impl getCallIDStatus:callID];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing get call id status successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed get call id status");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testGetCallsDetails{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //send message id status
        CallsDetailsResponse *response = [impl getCallsDetails];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            
            for(int i=0;i< [response.MessagesData count];i++){
                CallsDetailsData *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Parsing get calls details successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed get calls details");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testTTSCall{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //param
        NSString *recipient = @"962789309519";
        NSString *content = @"TTS Call";
        NSString *language = @"english";
        
        //send message id status
        CallTTSResponse *response = [impl ttsCall:recipient withContent:content withLanguage:language];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing tts call successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed tts call");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testGetScheduled{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //send message id status
        CallGetScheduledResponse *response = [impl getScheduled];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing get scheduled successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed get scheduled");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testStopScheduled{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        CallResourceImpl *impl = [[CallResourceImpl alloc] init];
        [impl initializeCallResourceImpl:appSid];
        
        //param
        NSString *callID = @"926";
        
        //send message id status
        CallStopScheduledResponse *response = [impl stopScheduled:callID];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing stop scheduled successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed stop scheduled");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

@end
