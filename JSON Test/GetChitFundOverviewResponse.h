//
//  Data.h
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/3/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "ModelBase.h"
@interface GetChitFundOverviewResponse : ModelBase

@property (strong) NSString *userId;
@property (strong) NSMutableArray *chitOverview;

@end
