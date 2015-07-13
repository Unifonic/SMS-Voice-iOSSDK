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
//  AccountResourceImpl.h
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/9/15.
//

#import <Foundation/Foundation.h>
#import "AResource.h"
#import "AccountUrlImpl.h"
#import "AccountGetBalance.h"
#import "AccountAddSenderID.h"
#import "AccountGetSenderIDStatus.h"
#import "AccountGetSenderIDs.h"
#import "AccountDeleteSenderID.h"
#import "AccountGetAppDefaultSenderID.h"
#import "AccountChangeAppDefaultSenderID.h"

@interface AccountResourceImpl : AResource
@property AccountUrlImpl *accountUrl;

- (void) initializeAccountResourceImpl:(NSString*)appSid;
- (AccountGetBalance*) getBalance;
- (AccountAddSenderID*) addSenderID:(NSString*)senderID;
- (AccountGetSenderIDStatus*) getSenderIDStatus:(NSString*)senderID;
- (AccountGetSenderIDs*) getSenderIDs;
- (AccountDeleteSenderID*) deleteSenderID:(NSString*)senderID;
- (AccountGetAppDefaultSenderID*) getAppDefaultSenderID;
- (AccountChangeAppDefaultSenderID*) changeAppDefaultSenderID:(NSString *)senderID;
@end
