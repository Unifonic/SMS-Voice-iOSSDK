OTS REST API for iOS

A simple HTTP based RESTful API library will enable your apps to send emails and sms messages, make phone calls, and setup two-factor authentication through OTS Cloud Communication Platform
Installation

If you want to compile it yourself, here's how:
$ git clone https://github.com/otsdc/SMS-Voice-iOSSDK

Example

Here is the example to Use Message API

#import <XCTest/XCTest.h>
#import "OTSRestResponse.h"
#import "MessageResourceImpl.h"
#import "MessageResponse.h"
#import "BulkRequest.h"
#import "BulkResponse.h"
#import "BulkMessageStatus.h"
#import "MessageIDStatus.h"
#import "MessageDetailsRequest.h"
#import "MessageDetailsStatus.h"
#import "ConstantParam.h"
#import "ConstantMessageStatus.h"
#import "MessageDetailGetScheduled.h"
#import "MessageStopScheduled.h"

@interface MessageTests : XCTestCase

@end

@implementation MessageTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (NSString*)encodeURL:(NSString *)string
{
    NSString *newString = (__bridge_transfer NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)string, NULL, CFSTR(":/?#[]@!$ &'()*+,;=\"<>%{}|\\^~`"), CFStringConvertNSStringEncodingToEncoding(NSUTF8StringEncoding));
    
    if (newString)
    {
        return newString;
    }
    
    return @"";
}

- (void)testSendMessage
{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        MessageRequest *request = [[MessageRequest alloc]init];
        [request setRecipient:@"962789309519"];
        [request setBody:@"Content Message1"];
        
        //send message 1
        MessageResponse *response = [impl send:request];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed Data");
        }
        
        //send message 2
        NSMutableDictionary *messageDict = [[NSMutableDictionary alloc]init];
        [messageDict setObject:@"962789309519" forKey:@"Recipient"];
        [messageDict setObject:@"Content Message2" forKey:@"Body"];
        MessageResponse *response2 = [impl sendFromDictionary:messageDict];
        if([response2.success isEqualToString:@"true"]){
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Parsing send message 2 successfully");
        }else{
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Failed send message 2 Data");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

- (void)testBulkMessage
{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        BulkRequest *request = [[BulkRequest alloc]init];
        [request setRecipient:@"962789309519"];
        [request setBody:@"Bulk Request 1"];
        
        //send bulk message 1
        BulkResponse *response = [impl sendBulk:request];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            for(int i=0;i< [response.MessagesData count];i++){
                BulkMessageStatus *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Parsing Bulk successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed Data Bulk");
        }
        
        //send bulk message 2
        NSMutableDictionary *messageDict = [[NSMutableDictionary alloc]init];
        [messageDict setObject:@"962789309519" forKey:@"Recipient"];
        [messageDict setObject:@"Bulk Request 2" forKey:@"Body"];
        
        BulkResponse *response2 = [impl sendBulkFromDictionary:messageDict];
        
        if([response2.success isEqualToString:@"true"]){
            NSLog(@"%@", [response2 toString]);
            for(int i=0;i< [response2.MessagesData count];i++){
                BulkMessageStatus *messageStatus = response2.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Parsing Bulk 2 successfully");
        }else{
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Failed Data 2 Bulk");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }

}

-(void) testMessageIDStatus{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        //send message id status
        MessageIDStatus *response = [impl getMessageIDStatus:@"166635885"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing message id successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed message id Data");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testGetMessageDetails{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        //get message details no filter
        NSMutableDictionary *messageDict = [[NSMutableDictionary alloc]init];
        MessageDetailsResponse *response = [impl getMessageDetails:messageDict];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            for(int i=0;i< [response.MessagesData count];i++){
                MessageDetailsStatus *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Get Message Details 1 successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed Message Details 1");
        }
        
        //getmessage detail get 10 sent message detail
        MessageDetailsRequest *messageRequest = [[MessageDetailsRequest alloc]init];
        [messageRequest setLimit:@"10"];
        [messageRequest setStatus:STATUS_SENT];
        
        MessageDetailsResponse *response2 = [impl getMessageDetailsRequest:messageRequest];
        
        if([response2.success isEqualToString:@"true"]){
            NSLog(@"%@", [response2 toString]);
            for(int i=0;i< [response2.MessagesData count];i++){
                MessageDetailsStatus *messageStatus = response2.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Get Message Details 2 get 10 sent successfully");
        }else{
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Failed Message Details 2 get 10 sent");
        }
        
        //or this way
        NSMutableDictionary *messageMap = [[NSMutableDictionary alloc]init];
        [messageMap setObject:@"10" forKey:@"Limit"];
        [messageMap setObject:@"Sent" forKey:@"Status"];
        
        MessageDetailsResponse *response3 = [impl getMessageDetails:messageMap];
        
        if([response3.success isEqualToString:@"true"]){
            NSLog(@"%@", [response3 toString]);
            for(int i=0;i< [response3.MessagesData count];i++){
                MessageDetailsStatus *messageStatus = response3.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Get Message Details 3 get 10 sent with map successfully");
        }else{
            NSLog(@"%@", [response3 toString]);
            NSLog(@"Failed Message Details 2 get 10 sent with map");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

- (void)testMessageReport
{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        MessageReportRequest *request = [[MessageReportRequest alloc]init];
        
        //message report no filter
        MessageReportResponse *response = [impl getMessageReportRequest:request];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing message report successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed parsing message report");
        }
        
        //send message 2
        MessageReportRequest *request2 = [[MessageReportRequest alloc]init];
        [request2 setStatus:STATUS_SENT];
        
        //message report with filter
        MessageReportResponse *response2 = [impl getMessageReportRequest:request2];
        
        if([response2.success isEqualToString:@"true"]){
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Parsing message report 2 successfully");
        }else{
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Failed parsing message report 2");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

- (void)testGetScheduledMessage
{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        MessageGetScheduledRequest *request = [[MessageGetScheduledRequest alloc]init];
        
        //message report no filter
        MessageGetScheduledResponse *response = [impl getScheduledMessagesRequest:request];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            
            for(int i=0;i< [response.MessagesData count];i++){
                MessageDetailGetScheduled *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Parsing get scheduled message successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed parsing get scheduled message");
        }
        
        //send message 2
        MessageGetScheduledRequest *request2 = [[MessageGetScheduledRequest alloc]init];
        [request2 setMessageID:@"11939"];
        
        //message report with filter
        MessageGetScheduledResponse *response2 = [impl getScheduledMessagesRequest:request2];
        
        if([response2.success isEqualToString:@"true"]){
            NSLog(@"%@", [response2 toString]);
            for(int i=0;i< [response.MessagesData count];i++){
                MessageDetailGetScheduled *messageStatus = response.MessagesData[i];
                NSLog(@"%@", [messageStatus toString]);
            }
            
            NSLog(@"Parsing message report 2 successfully");
        }else{
            NSLog(@"%@", [response2 toString]);
            NSLog(@"Failed parsing message report 2");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

-(void) testStopScheduledMessages{
    @try {
        NSString *appSid = @"cYWr62UeR6mbGZw6qHWUhiVX8z5ed";
        MessageResourceImpl *impl = [[MessageResourceImpl alloc] init];
        [impl initializeMessageResourceImpl:appSid];
        
        //send message id status
        MessageStopScheduled *response = [impl getStopScheduledMessages:@"69"];
        
        if([response.success isEqualToString:@"true"]){
            NSLog(@"%@", [response toString]);
            NSLog(@"Parsing stop scheduled message successfully");
        }else{
            NSLog(@"%@", [response toString]);
            NSLog(@"Failed parsing stop scheduled message");
        }
    }
    @catch (NSException *exception) {
        NSLog(@"Error cause of: %@ - %@", exception.name, exception.reason);
    }
}

@end
