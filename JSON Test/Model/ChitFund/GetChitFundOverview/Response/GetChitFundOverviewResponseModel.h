
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundOverviewResponseResponse.h"
#import "GetChitFundOverviewResponseEcho.h"
@interface GetChitFundOverviewResponseModel : ModelBase


@property (strong) GetChitFundOverviewResponseResponse *response;
@property (strong) GetChitFundOverviewResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end