//
//  ViewController.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/3/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "TestViewController.h"
#import "GetChitFundOverviewRequestData.h"
#import "GetChitFundOverviewResponseData.h"

@interface TestViewController ()

@end

@implementation TestViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GetChitFundOverviewRequestData *data = [[GetChitFundOverviewRequestData alloc]init];
    data.userId = @"sharma.ssm@gmail.com";
    
    [super sendRequest:data];

}

- (void)processResponse:(NSDictionary*)response
{
    [super processResponse:response];
    GetChitFundOverviewResponseData *data1 = [[GetChitFundOverviewResponseData alloc]initWithDict:[[response objectForKey:@"response"] objectForKey:@"data"]];
    NSLog(@"data part in response %@", [data1 toJSONString]);    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
