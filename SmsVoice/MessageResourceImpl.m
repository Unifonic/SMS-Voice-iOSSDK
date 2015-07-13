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
//  MessageResourceImpl.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/7/15.
//

#import "MessageResourceImpl.h"
#import "JsonParser.h"

@implementation MessageResourceImpl
- (void) initializeMessageResourceImpl:(NSString *)appSid{
    [super setAppSid:appSid];
    _messageUrl = [[MessageUrlImpl alloc]init];
    [_messageUrl initializeMessageUrlImppl:@"http://api.otsdc.com/rest/"];
}

- (MessageResponse*) send:(MessageRequest *)param{
    return [self sendFromDictionary:[param getData]];
}

- (MessageResponse*) sendFromDictionary:(NSMutableDictionary *)param{
    [param setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlSend withParams:param];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageResponse *returns = [jsonParser fromJson:response.data];
        return returns;
    }else{
        
        @throw [NSException
        exceptionWithName:@"Exception"
        reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
        userInfo:nil];
    }
}

- (BulkResponse*) sendBulk:(BulkRequest *)param{
    return [self sendBulkFromDictionary:[param getData]];
}

-(BulkResponse*) sendBulkFromDictionary:(NSMutableDictionary *)param{
    [param setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlSendBulk withParams:param];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        BulkResponse *returns = [jsonParser fromJsonBulk:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }

}

- (MessageIDStatus*)getMessageIDStatus:(NSString *)messageID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:messageID forKey:@"MessageID"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlGetMessageIDStatus withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageIDStatus *returns = [jsonParser fromGetMessageID:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }

}

-(MessageDetailsResponse*) getMessageDetails:(NSMutableDictionary *)param{
    [param setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlGetMessageDetails withParams:param];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageDetailsResponse *returns = [jsonParser fromGetMessageDetails:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

-(MessageDetailsResponse*) getMessageDetailsRequest:(MessageDetailsRequest *)request{
    return [self getMessageDetails:[request getData]];
}

- (MessageReportResponse*) getMessagesReport:(NSMutableDictionary *)param{
    [param setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlGetMessageReport withParams:param];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageReportResponse *returns = [jsonParser fromGetMessageReport:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
}

-(MessageReportResponse*) getMessageReportRequest:(MessageReportRequest *)request{
    return [self getMessagesReport:[request getData]];
}

- (MessageGetScheduledResponse*) getScheduledMessages:(NSMutableDictionary *)param{
    [param setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlGetScheduledMessages withParams:param];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageGetScheduledResponse *returns = [jsonParser fromGetMessageScheduled:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
}

-(MessageGetScheduledResponse*) getScheduledMessagesRequest:(MessageGetScheduledRequest *)request{
    return [self getScheduledMessages:[request getData]];
}

- (MessageStopScheduled*)getStopScheduledMessages:(NSString *)messageID{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:messageID forKey:@"MessageID"];
    OTSRestResponse *response = [self sendRequest:[self messageUrl].urlStopScheduledMessages withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        MessageStopScheduled *returns = [jsonParser fromStopMessageScheduled:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

@end
