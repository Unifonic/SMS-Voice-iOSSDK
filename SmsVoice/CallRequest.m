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
//  CallRequest.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/6/15.
//

#import "CallRequest.h"
#import "ConstantParam.h"

@implementation CallRequest
- (NSString*) getCallType{
    return [super get:CONST_CALL_TYPE];
}

- (void) setCallType:(NSString *)callType{
    [super put:CONST_CALL_TYPE andValue:callType];
}

- (NSString*) getCallerID{
    return [super get:CONST_CALLER_ID];
}

- (void) setCallerID:(NSString *)callerID{
    [super put:CONST_CALLER_ID andValue:callerID];
}

- (NSString*) getTimeScheduled{
    return [super get:CONST_TIMESCHEDULED];
}

- (void) setTimeScheduled:(NSString *)timeScheduled{
    [super put:CONST_TIMESCHEDULED andValue:timeScheduled];
}

- (NSString*) getDelay{
    return [super get:CONST_DELAY];
}

- (void) setDelay:(NSString *)delay{
    [super put:CONST_DELAY andValue:delay];
}

- (NSString*) getRepeat{
    return [super get:CONST_REPEAT];
}

- (void) setRepeat:(NSString *)repeat{
    if([self getCallType] != nil && [[self getCallType] isEqualToString:@"pull"]){
        [super put:CONST_REPEAT andValue:repeat];
    }
}
@end
