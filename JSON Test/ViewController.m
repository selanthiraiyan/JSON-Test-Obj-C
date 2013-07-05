//
//  ViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/3/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "ViewController.h"
#import "Data.h"
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
    [self hitServer];

}

-(NSString*)MSFUrlEncoded:(NSString *)commandtoConvert
{
    CFStringRef encoded = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (CFStringRef) commandtoConvert, NULL,  CFSTR("+!#$& ,/:;<=>?@[\\]^_`{|}~"),kCFStringEncodingUTF8);
    return (__bridge NSString *)(encoded);
}

- (void)hitServer
{  
    NSMutableURLRequest *therequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://thejumpingspiders.appspot.com/ChitFund/GetChitFundOverview"] cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:120.0];
    [therequest setHTTPMethod: @"POST"];

    GetChitFundOverviewRequest *data = [[GetChitFundOverviewRequest alloc]init];
    data.userId = @"sharma.ssm@gmail.com";
    
    RequestJSONObject *request = [[RequestJSONObject alloc]initWithData:data];
    NSString *requ = [NSString stringWithFormat:@"mobile_request=%@", [request toJSONString]];

    [therequest setHTTPBody:[requ dataUsingEncoding:NSUTF8StringEncoding]];

    self.receivedData = [[NSMutableData alloc] initWithLength:0];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:therequest delegate:self startImmediately:YES];
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
    NSLog(@"Response String %@", response);
    [self processResponse:response];
    [connection cancel];
}

- (void)processResponse:(NSDictionary*)response
{
    Data *data1 = [[Data alloc]initWithDict:[[response objectForKey:@"response"] objectForKey:@"data"]];
    NSLog(@"actual response %@", [data1 toJSONString]);    
}

@end
