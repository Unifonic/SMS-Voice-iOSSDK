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
//  MessageResourceImpl.h
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/7/15.
//

#import <Foundation/Foundation.h>
#import "MessageUrlImpl.h"
#import "MessageRequest.h"
#import "MessageResponse.h"
#import "AResource.h"
#import "BulkResponse.h"
#import "BulkRequest.h"
#import "MessageIDStatus.h"
#import "MessageDetailsResponse.h"
#import "MessageDetailsRequest.h"
#import "MessageReportResponse.h"
#import "MessageReportRequest.h"
#import "MessageGetScheduledResponse.h"
#import "MessageGetScheduledRequest.h"
#import "MessageStopScheduled.h"

@interface MessageResourceImpl : AResource
@property MessageUrlImpl *messageUrl;

- (void) initializeMessageResourceImpl:(NSString*)appSid;
- (MessageResponse*) send:(MessageRequest*)param;
- (MessageResponse*) sendFromDictionary:(NSDictionary*)param;
- (BulkResponse*) sendBulk:(BulkRequest*)param;
- (BulkResponse*) sendBulkFromDictionary:(NSDictionary*)param;
- (MessageIDStatus*) getMessageIDStatus:(NSString*)messageID;
- (MessageDetailsResponse*) getMessageDetails:(NSMutableDictionary *)param;
- (MessageDetailsResponse*) getMessageDetailsRequest:(MessageDetailsRequest *)request;
- (MessageReportResponse*) getMessagesReport:(NSMutableDictionary *)param;
- (MessageReportResponse*) getMessageReportRequest:(MessageReportRequest *)request;
- (MessageGetScheduledResponse*) getScheduledMessages:(NSMutableDictionary *)param;
- (MessageGetScheduledResponse*) getScheduledMessagesRequest:(MessageGetScheduledRequest *)request;
- (MessageStopScheduled*) getStopScheduledMessages:(NSString*)messageID;
@end
