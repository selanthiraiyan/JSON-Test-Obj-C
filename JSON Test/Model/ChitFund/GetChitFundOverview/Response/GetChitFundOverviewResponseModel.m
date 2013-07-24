
//  Created by json-to-model
#import "GetChitFundOverviewResponseModel.h"
@implementation GetChitFundOverviewResponseModel


@synthesize response;
@synthesize echo;
- (NSString*)getServletName {
 return @"GetChitFundOverview";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundOverviewResponse";
};

@end