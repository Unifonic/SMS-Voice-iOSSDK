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
//  VerifyGetCodeRequest.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/10/15.
//

#import "VerifyGetCodeRequest.h"
#import "ConstantParam.h"

@implementation VerifyGetCodeRequest
- (NSString*) getSecurityType{
    return [super get:CONST_SECURITY_TYPE];
}

- (void) setSecurityType:(NSString *)securityType{
    [super put:CONST_SECURITY_TYPE andValue:securityType];
}

- (NSString*) getExpiry{
    return [super get:CONST_EXPIRY];
}

- (void) setExpiry:(NSString *)expiry{
    [super put:CONST_EXPIRY andValue:expiry];
}

- (NSString*) getSenderID{
    return [super get:CONST_SENDERID];
}

- (void) setSenderID:(NSString *)senderID{
    [super put:CONST_SENDERID andValue:senderID];
}

- (NSString*) getChannel{
    return [super get:CONST_CHANNEL];
}

- (void) setChannel:(NSString *)channel{
    [super put:CONST_CHANNEL andValue:channel];
}

- (NSString*) getLanguage{
    return [super get:CONST_LANGUAGE];
}

- (void) setLanguage:(NSString *)language{
    [super put:CONST_LANGUAGE andValue:language];
}

- (NSString*) getTTL{
    return [super get:CONST_TTL];
}

- (void) setTTL:(NSString *)TTL{
    [super put:CONST_TTL andValue:TTL];
}
@end
