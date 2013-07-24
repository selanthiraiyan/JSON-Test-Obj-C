
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundOverviewRequestRequest.h"
#import "GetChitFundOverviewRequestEcho.h"
@interface GetChitFundOverviewRequestModel : ModelBase


@property (strong) GetChitFundOverviewRequestRequest *request;
@property (strong) GetChitFundOverviewRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end