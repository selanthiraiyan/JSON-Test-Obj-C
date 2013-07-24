
//  Created by json-to-model
#import "GetChitFundOverviewResponseData.h"
@implementation GetChitFundOverviewResponseData


@synthesize userId;
@synthesize chitOverview;
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