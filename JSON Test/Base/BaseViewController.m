//
//  BaseViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#define MOSL_URL @"http://122.184.137.222/MOSL-Retail"
#define KMB_URL @"http://203.196.200.42/j1001MBDep/uat/KMBMobile"
#import "BaseViewController.h"
#import "BaseView.h"
#import "ChangePasswordLoginModelRequest.h"

@interface BaseViewController()

@property (retain) NSMutableData *receivedData;

@end

@implementation BaseViewController
@synthesize receivedData;

- (id)initWithViewClass:(Class)viewClassName
{
    self = [super init];
    if (self) {
        if ([viewClassName isSubclassOfClass:[BaseView class]]) {
            self.view = [[viewClassName alloc]initWithController:self];
        }
        else {
            [NSException raise:@"Not a valid view." format:@"View should be a sub class of BaseView."];
        }
    }
    return self;
}



#pragma mark Request - Response related methods
- (void)sendRequest:(id<JSONModelBaseProtocol>)data
{
    ChangePasswordLoginModelRequest *req = [[ChangePasswordLoginModelRequest alloc]init];
    NSLog(@"password is %@", req.password);
    if (req.password == nil) {
        NSLog(@"it is nil");
    }
    NSError *error = nil;
    if ([req isPasswordValid:&error]) {
        NSLog(@"its an error");
    }
    
    RequestJSONObject *request = [[RequestJSONObject alloc]initWithData:data];
    [self hitServerUsingRequest:request];
}

- (void)hitServerUsingRequest:(RequestJSONObject*)request
{
    NSString *baseURL = @"http://thejumpingspiders.appspot.com";
    NSString *urlString = [NSString stringWithFormat:@"%@/%@", baseURL, [request getServletURL]];
    
    NSMutableURLRequest *therequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:urlString] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:120.0];
    [therequest setHTTPMethod: @"POST"];
    
    NSString *body = [NSString stringWithFormat:@"mobile_request=%@", [request toJSONString]];
    [therequest setHTTPBody:[body dataUsingEncoding:NSUTF8StringEncoding]];
    
    
    NSLog(@"Sending request %@?%@", urlString, body);
    
    self.receivedData = [[NSMutableData alloc] initWithLength:0];
    [[NSURLConnection alloc] initWithRequest:therequest delegate:self startImmediately:YES];
}

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    [self.receivedData setLength:0];
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.receivedData appendData:data];
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSLog(@"Failed %@", [error localizedDescription]);
}

- (NSCachedURLResponse *) connection:(NSURLConnection *)connection willCacheResponse:(NSCachedURLResponse *)cachedResponse {
    return nil;
}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
    
    NSError *error = nil;
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    NSDictionary *response = [NSJSONSerialization JSONObjectWithData:receivedData options:NSJSONReadingAllowFragments error:&error];
    [self processResponse:response];
    [connection cancel];
}

- (void)processResponse:(NSDictionary*)response
{
    NSLog(@"Received response %@", response);
}
@end
