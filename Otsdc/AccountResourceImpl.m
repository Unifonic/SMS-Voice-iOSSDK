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
//  AccountResourceImpl.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/9/15.
//

#import "AccountResourceImpl.h"
#import "JsonParser.h"

@implementation AccountResourceImpl
- (void) initializeAccountResourceImpl:(NSString *)appSid{
    [super setAppSid:appSid];
    _accountUrl = [[AccountUrlImpl alloc]init];
    [_accountUrl initializeAccountUrlImppl:@"http://api.otsdc.com/rest/"];
}

- (AccountGetBalance*)getBalance{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlGetBalance withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountGetBalance *returns = [jsonParser fromGetBalance:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountAddSenderID*)addSenderID:(NSString *)senderID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:senderID forKey:@"SenderID"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlAddSenderID withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountAddSenderID *returns = [jsonParser fromAddSenderID:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountGetSenderIDStatus*)getSenderIDStatus:(NSString *)senderID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:senderID forKey:@"SenderID"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlGetSenderIDStatus withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountGetSenderIDStatus *returns = [jsonParser fromGetSenderIDStatus:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountGetSenderIDs*)getSenderIDs{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlGetSenderIDs withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountGetSenderIDs *returns = [jsonParser fromGetSenderIDs:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountDeleteSenderID*)deleteSenderID:(NSString *)senderID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:senderID forKey:@"SenderID"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlDeleteSenderID withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountDeleteSenderID *returns = [jsonParser fromDeleteSenderID:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountGetAppDefaultSenderID*)getAppDefaultSenderID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlGetAppDefaultSenderID withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountGetAppDefaultSenderID *returns = [jsonParser fromGetAppDefaultSenderID:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (AccountChangeAppDefaultSenderID*)changeAppDefaultSenderID:(NSString *)senderID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:senderID forKey:@"SenderID"];
    OTSRestResponse *response = [self sendRequest:[self accountUrl].urlChangeAppDefaultSenderID withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        AccountChangeAppDefaultSenderID *returns = [jsonParser fromChangeAppDefaultSenderID:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}
@end
