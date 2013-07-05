//
//  ViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/3/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "ViewController.h"
#import "GetChitFundOverviewResponse.h"
#import "ChitOverview.h"
#import "GetChitFundOverviewRequest.h"
#import "RequestJSONObject.h"

@interface ViewController ()

@property (retain) NSMutableData *receivedData;

@end

@implementation ViewController
@synthesize receivedData;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GetChitFundOverviewRequest *data = [[GetChitFundOverviewRequest alloc]init];
    data.userId = @"sharma.ssm@gmail.com";
    
    [self sendRequest:data];

}

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

    self.receivedData = [[NSMutableData alloc] initWithLength:0];
    [[NSURLConnection alloc] initWithRequest:therequest delegate:self startImmediately:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    GetChitFundOverviewResponse *data1 = [[GetChitFundOverviewResponse alloc]initWithDict:[[response objectForKey:@"response"] objectForKey:@"data"]];
    NSLog(@"data part in response %@", [data1 toJSONString]);    
}

@end
