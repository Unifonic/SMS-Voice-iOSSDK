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
//  ModelResponse.m
//  SmsVoice
//
//  Created by Nirwan Nursabda on 7/6/15.
//

#import "ModelResponse.h"

@implementation ModelResponse

- (NSString*) toStringMessage{
    NSMutableString *temp = [[NSMutableString alloc]init];
    
    const id object = _message;
    if (object == nil && [object isEqualToString:@""]) {
        NSLog(@"contain null value");
    }
    else if ([object isKindOfClass: [NSDictionary class]]) {
        if([_message count] > 0) [temp appendString:@"{"];
        
        for(id key in _message){
            NSMutableArray *tempArray = [_message objectForKey:key];
            if ([tempArray isKindOfClass: [NSString class]]){
                [temp appendString:tempArray];
                [temp appendString:@","];
            }else{
                for(id val in tempArray){
                    [temp appendString:val];
                    [temp appendString:@","];
                }
            }
        }
        
        if([_message count] > 0){
            NSRange recipientLength = NSMakeRange(0, temp.length - 1);
            [temp setString:[temp substringWithRange:recipientLength]];
            [temp appendString:@"}"];
        }
    }
    
    return temp;
}
@end
