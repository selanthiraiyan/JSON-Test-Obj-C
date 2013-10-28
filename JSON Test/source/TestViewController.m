//
//  ViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/3/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "TestViewController.h"
#import "NetPositionSummaryTradeModelRequest.h"
#import "NetPositionSummaryTradeModelResponse.h"
@interface TestViewController ()

@end

@implementation TestViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)getTDRates
{
    NSLog(@"getting td rates");
    
    NetPositionSummaryTradeModelRequest *data = [[NetPositionSummaryTradeModelRequest alloc]init];
    data.clientCode = @"AYS1534";
    data.strToken = @"UVZsVE1UVXpORjQxTTE1RlVRPT0";
    [super sendRequest:data];
    
}

- (void)processResponse:(NSDictionary*)response
{
    [super processResponse:response];
    NetPositionSummaryTradeModelResponse *data1 = [[NetPositionSummaryTradeModelResponse alloc]initWithDict:[[[self getResponseFromFile] objectForKey:@"response"] objectForKey:@"data"]];
    
    NSLog(@"exploring the objects %@", data1);

}

- (NSDictionary*)getResponseFromFile
{
    NSString* path = [[NSBundle mainBundle] pathForResource:@"json"
                                                     ofType:@"txt"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    return json;
}


@end
