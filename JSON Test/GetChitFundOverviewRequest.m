//
//  GetChitFundOverviewRequest.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/5/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "GetChitFundOverviewRequest.h"

@implementation GetChitFundOverviewRequest
@synthesize userId;

- (NSString*)getServletName
{
    return @"GetChitFundOverview";
}

- (NSString*)getServletGroup
{
    return @"ChitFund";
}

@end
