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
//  MessageDetailsRequest.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/8/15.
//

#import "MessageDetailsRequest.h"
#import "ConstantParam.h"

@implementation MessageDetailsRequest
- (NSString*) getMessageID{
    return [super get:CONST_MESSAGEID];
}

- (void) setMessageID:(NSString *)messageID{
    [super put:CONST_MESSAGEID andValue:messageID];
}

- (NSString*) getDateFrom{
    return [super get:CONST_DATE_FROM];
}

- (void) setDateFrom:(NSString *)dateFrom{
    [super put:CONST_DATE_FROM andValue:dateFrom];
}

- (NSString*) getDateTo{
    return [super get:CONST_DATE_TO];
}

- (void) setDateTo:(NSString *)dateTo{
    [super put:CONST_DATE_TO andValue:dateTo];
}

- (NSString*) getSenderID{
    return [super get:CONST_SENDERID];
}

- (void) setSenderID:(NSString *)senderID{
    [super put:CONST_SENDERID andValue:senderID];
}

- (NSString*) getStatus{
    return [super get:CONST_STATUS];
}

- (void) setStatus:(NSString *)status{
    [super put:CONST_STATUS andValue:status];
}

- (NSString*) getDLR{
    return [super get:CONST_DLR];
}

- (void) setDLR:(NSString *)dlr{
    [super put:CONST_DLR andValue:dlr];
}

- (NSString*) getCountry{
    return [super get:CONST_COUNTRY];
}

- (void) setCountry:(NSString *)country{
    [super put:CONST_COUNTRY andValue:country];
}

- (NSString*) getLimit{
    return [super get:CONST_LIMIT];
}

- (void) setLimit:(NSString *)limit{
    [super put:CONST_LIMIT andValue:limit];
}

- (NSString*) getPage{
    return [super get:CONST_PAGE];
}

- (void) setPage:(NSString *)page{
    [super put:CONST_PAGE andValue:page];
}
@end
