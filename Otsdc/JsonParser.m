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
//  JsonParser.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/7/15.
//

#import "JsonParser.h"

@implementation JsonParser
- (MessageResponse*) fromJson:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (BulkResponse*) fromJsonBulk:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    BulkResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[BulkResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (MessageIDStatus*) fromGetMessageID:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageIDStatus *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageIDStatus alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (MessageDetailsResponse*) fromGetMessageDetails:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageDetailsResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageDetailsResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (MessageReportResponse*) fromGetMessageReport:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageReportResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageReportResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (MessageGetScheduledResponse*) fromGetMessageScheduled:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageGetScheduledResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageGetScheduledResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (MessageStopScheduled*) fromStopMessageScheduled:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    MessageStopScheduled *response;
    
    if(!jsonParsingError && parseData){
        response = [[MessageStopScheduled alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountGetBalance*) fromGetBalance:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountGetBalance *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountGetBalance alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountAddSenderID*) fromAddSenderID:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountAddSenderID *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountAddSenderID alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountGetSenderIDStatus*) fromGetSenderIDStatus:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountGetSenderIDStatus *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountGetSenderIDStatus alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountGetSenderIDs*) fromGetSenderIDs:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountGetSenderIDs *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountGetSenderIDs alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountDeleteSenderID*) fromDeleteSenderID:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountDeleteSenderID *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountDeleteSenderID alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountGetAppDefaultSenderID*) fromGetAppDefaultSenderID:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountGetAppDefaultSenderID *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountGetAppDefaultSenderID alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (AccountChangeAppDefaultSenderID*) fromChangeAppDefaultSenderID:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    AccountChangeAppDefaultSenderID *response;
    
    if(!jsonParsingError && parseData){
        response = [[AccountChangeAppDefaultSenderID alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallResponse*) fromCall:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallStatusResponse*) fromGetCallIDStatus:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallStatusResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallStatusResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallsDetailsResponse*) fromGetCallsDetail:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallsDetailsResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallsDetailsResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallTTSResponse*) fromTTSCall:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallTTSResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallTTSResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallGetScheduledResponse*) fromGetScheduledResponse:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallGetScheduledResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallGetScheduledResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CallStopScheduledResponse*) fromStopScheduledResponse:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CallStopScheduledResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CallStopScheduledResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (EmailSendResponse*) sendEmail:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    EmailSendResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[EmailSendResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (EmailGetReportResponse*) getEmailsReport:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    EmailGetReportResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[EmailGetReportResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (VerifyGetCodeResponse*) getCode:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    VerifyGetCodeResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[VerifyGetCodeResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (VerifyNumberResponse*) verifyNumber:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    VerifyNumberResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[VerifyNumberResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

- (CheckerCheckNumberResponse*) checkNumber:(NSData *)data{
    NSError *jsonParsingError = nil;
    NSDictionary *parseData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonParsingError];
    CheckerCheckNumberResponse *response;
    
    if(!jsonParsingError && parseData){
        response = [[CheckerCheckNumberResponse alloc] initWithJSONString:parseData];
    }
    
    return response;
}

@end
