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
//  AccountTest.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/9/15.
//

#import <XCTest/XCTest.h>
#import "AccountResourceImpl.h"
#import "AccountGetSenderIDResponse.h"

@interface AccountTest : XCTestCase

@end

@implementation AccountTest

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

-(void) testGetBalance{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send message id status
        AccountGetBalance *response = [impl getBalance];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account get balanace successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get balance");
        }

    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testAddSenderID{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountAddSenderID *response = [impl addSenderID:@"966500199715"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account add sender id successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get sender id");
        }
        
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testGetSenderIDStatus{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountGetSenderIDStatus *response = [impl getSenderIDStatus:@"966500199715"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account get sender id status successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get sender is status");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
    
}

-(void) testGetSenderIDs{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountGetSenderIDs *response = [impl getSenderIDs];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            
            for(int i=0;i< [response.MessagesData count];i++){
                AccountGetSenderIDResponse *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            NSLog(@"Parsing account get sender ids successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get sender ids status");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
    
}

-(void) testGetAppDefaultSenderID{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountGetAppDefaultSenderID *response = [impl getAppDefaultSenderID];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account get app default sender id successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get app default sender id");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testChangeAppDefaultSenderID{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountChangeAppDefaultSenderID *response = [impl changeAppDefaultSenderID:@"966500199714"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account get app default sender id successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account get app default sender id");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testDeleteSenderID{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        AccountResourceImpl *impl = [[AccountResourceImpl alloc] init];
        [impl initializeAccountResourceImpl:appSid];
        
        //send add sender id
        AccountDeleteSenderID *response = [impl deleteSenderID:@"12312663577"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing account delete sender id successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed account delete sender id");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

@end
