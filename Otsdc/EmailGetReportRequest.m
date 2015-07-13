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
//  EmailGetReportRequest.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import "EmailGetReportRequest.h"
#import "ConstantParam.h"

@implementation EmailGetReportRequest
- (NSString*) getEmailStatus{
    return [super get:CONST_EMAIL_STATUS];
}

- (void) setEmailStatus:(NSString *)emailStatus{
    [super put:CONST_EMAIL_STATUS andValue:emailStatus];
}

- (NSString*) getSubject{
    return [super get:CONST_SUBJECT];
}

- (void) setSubject:(NSString *)subject{
    [super put:CONST_SUBJECT andValue:subject];
}

- (NSString*) getDateCreated{
    return [super get:CONST_DATE_CREATED];
}

- (void) setDateCreated:(NSString *)dateCreated{
    [super put:CONST_DATE_CREATED andValue:dateCreated];
}

- (NSString*) getFrom{
    return [super get:CONST_FROM];
}

- (void) setFrom:(NSString *)from{
    [super put:CONST_FROM andValue:from];
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
@end
