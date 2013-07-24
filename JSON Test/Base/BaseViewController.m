//
//  BaseViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController()

@property (retain) NSMutableData *receivedData;
@property (strong) UIView *headerView;
@property (strong) UIView *footerView;

@end

@implementation BaseViewController
@synthesize receivedData;
@synthesize contentView;
@synthesize headerView;
@synthesize footerView;
- (id)init
{
    self = [super init];
    if (self) {
        [self createViews];
    }
    return self;
}

- (void)createViews
{
    
}

#pragma mark Request - Response related methods
- (void)sendRequest:(id<JSONModelBaseProtocol>)data
{
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
    
    
    NSLog(@"Sending request %@?%@", baseURL, body);
    
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
