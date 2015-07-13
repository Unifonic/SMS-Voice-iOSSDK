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
//  CallResourceImpl.h
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import <Foundation/Foundation.h>
#import "AResource.h"
#import "CallResponse.h"
#import "CallStatusResponse.h"
#import "CallsDetailsResponse.h"
#import "CallTTSResponse.h"
#import "CallGetScheduledResponse.h"
#import "CallStopScheduledResponse.h"
#import "CallUrlImpl.h"

@interface CallResourceImpl : AResource
@property CallUrlImpl *callUrl;

- (void) initializeCallResourceImpl:(NSString*)appSid;
- (CallResponse*) call:(NSString*)recipient withContent:(NSString*)content;
- (CallStatusResponse*) getCallIDStatus:(NSString*)callID;
- (CallsDetailsResponse*) getCallsDetails;
- (CallTTSResponse*) ttsCall:(NSString*)recipient withContent:(NSString*)content withLanguage:(NSString*)language;
- (CallGetScheduledResponse*) getScheduled;
- (CallStopScheduledResponse*) stopScheduled:(NSString*)callID;

@end
