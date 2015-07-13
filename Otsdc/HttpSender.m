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
//  HttpSender.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/7/15.
//

#import "HttpSender.h"

@implementation HttpSender
+ (OTSRestResponse*) request:(NSString *)url withData:(NSDictionary *)data{
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL
        URLWithString:url] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
    
    //[request setURL:[NSURL URLWithString:url]];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPMethod:@"POST"];
    
    NSString *postString = @"";
    
    NSMutableArray *parts = [NSMutableArray array];
    
    if(data != nil && [data count] > 0){
        for(id key in data){
            id value = [data objectForKey: key];
            NSString *part = [NSString stringWithFormat:@"%@=%@", [self encodeURL:key] , [self encodeURL:value]];
            [parts addObject: part];
        }
    
        postString = [parts componentsJoinedByString:@"&"];
    }
        
    [request setHTTPBody:[postString dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSHTTPURLResponse * response = nil;
    NSError * error = nil;
    NSData * datas = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    OTSRestResponse *otsResponse = [[OTSRestResponse alloc] init];
    otsResponse.data = datas;
    otsResponse.response = response;
    otsResponse.error = error;
    
    return otsResponse;
}

+ (NSString*)encodeURL:(NSString *)string
{
    NSString *newString = (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)string, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    if (newString)
    {
        return newString;
    }
    
    return @"";
}

@end
