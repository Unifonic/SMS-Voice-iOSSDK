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
//  JsonParser.h
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/7/15.
//

#import <Foundation/Foundation.h>
#import "MessageResponse.h"
#import "BulkResponse.h"
#import "MessageIDStatus.h"
#import "MessageDetailsResponse.h"
#import "MessageReportResponse.h"
#import "MessageGetScheduledResponse.h"
#import "MessageStopScheduled.h"
#import "AccountGetBalance.h"
#import "AccountAddSenderID.h"
#import "AccountGetSenderIDStatus.h"
#import "AccountGetSenderIDs.h"
#import "AccountDeleteSenderID.h"
#import "AccountGetAppDefaultSenderID.h"
#import "AccountChangeAppDefaultSenderID.h"
#import "CallResponse.h"
#import "CallRequest.h"
#import "CallStatusResponse.h"
#import "CallsDetailsResponse.h"
#import "CallsDetailsRequest.h"
#import "CallTTSRequest.h"
#import "CallTTSResponse.h"
#import "CallGetScheduledRequest.h"
#import "CallGetScheduledResponse.h"
#import "CallStopScheduledResponse.h"

#import "EmailSendRequest.h"
#import "EmailSendResponse.h"
#import "EmailGetReportRequest.h"
#import "EmailGetReportResponse.h"

#import "VerifyGetCodeRequest.h"
#import "VerifyGetCodeResponse.h"
#import "VerifyNumberResponse.h"

#import "CheckerCheckNumberResponse.h"

@interface JsonParser : NSObject
- (MessageResponse*) fromJson:(NSData*)data;
- (BulkResponse*) fromJsonBulk:(NSData*)data;
- (MessageIDStatus*) fromGetMessageID:(NSData*)data;
- (MessageDetailsResponse*) fromGetMessageDetails:(NSData*)data;
- (MessageReportResponse*) fromGetMessageReport:(NSData*)data;
- (MessageGetScheduledResponse*) fromGetMessageScheduled:(NSData*)data;
- (MessageStopScheduled*) fromStopMessageScheduled:(NSData*)data;

- (AccountGetBalance*) fromGetBalance:(NSData*)data;
- (AccountAddSenderID*) fromAddSenderID:(NSData*)data;
- (AccountGetSenderIDStatus*) fromGetSenderIDStatus:(NSData*)data;
- (AccountGetSenderIDs*) fromGetSenderIDs:(NSData*)data;
- (AccountDeleteSenderID*) fromDeleteSenderID:(NSData*)data;
- (AccountGetAppDefaultSenderID*) fromGetAppDefaultSenderID:(NSData*)data;
- (AccountChangeAppDefaultSenderID*) fromChangeAppDefaultSenderID:(NSData*)data;

- (CallResponse*) fromCall:(NSData*)data;
- (CallStatusResponse*) fromGetCallIDStatus:(NSData*)data;
- (CallsDetailsResponse*) fromGetCallsDetail:(NSData*)data;
- (CallTTSResponse*) fromTTSCall:(NSData*)data;
- (CallGetScheduledResponse*) fromGetScheduledResponse:(NSData*)data;
- (CallStopScheduledResponse*) fromStopScheduledResponse:(NSData*)data;

- (EmailSendResponse*) sendEmail:(NSData*)data;
- (EmailGetReportResponse*) getEmailsReport:(NSData*)data;

- (VerifyGetCodeResponse*) getCode:(NSData*)data;
- (VerifyNumberResponse*) verifyNumber:(NSData*)data;

- (CheckerCheckNumberResponse*) checkNumber:(NSData*)data;
@end
