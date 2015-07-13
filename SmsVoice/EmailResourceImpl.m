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
//  EmailResourceImpl.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import "EmailResourceImpl.h"
#import "JsonParser.h"

@implementation EmailResourceImpl
- (void) initializeEmailResourceImpl:(NSString *)appSid{
    [super setAppSid:appSid];
    _emailUrl = [[EmailUrlImpl alloc]init];
    [_emailUrl initializeEmailUrlImppl:@"http://api.otsdc.com/rest/"];
}

- (EmailSendResponse*)send:(NSString *)recipient withFrom:(NSString *)from withBody:(NSString *)body{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    [data setObject:recipient forKey:@"Recipient"];
    [data setObject:from forKey:@"From"];
    [data setObject:body forKey:@"Body"];
    OTSRestResponse *response = [self sendRequest:[self emailUrl].urlSend withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        EmailSendResponse *returns = [jsonParser sendEmail:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}

- (EmailGetReportResponse*)getEmailsReport{
    NSMutableDictionary *data = [[NSMutableDictionary alloc]init];
    
    [data setObject:[self appSid] forKey:@"AppSid"];
    OTSRestResponse *response = [self sendRequest:[self emailUrl].urlGetEmailsReport withParams:data];
    
    if(response.error == nil){
        JsonParser *jsonParser = [[JsonParser alloc] init];
        EmailGetReportResponse *returns = [jsonParser getEmailsReport:response.data];
        return returns;
    }else{
        @throw [NSException
                exceptionWithName:@"Exception"
                reason:[NSString stringWithFormat: @"Status Code :%ld with reason :%@", (long)[response.response statusCode], [response.error localizedDescription]]
                userInfo:nil];
    }
    
}
@end
