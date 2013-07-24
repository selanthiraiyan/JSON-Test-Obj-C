
//  Created by json-to-model
#import "GetChitFundOverviewRequestData.h"
@implementation GetChitFundOverviewRequestData


@synthesize userId;
- (NSString*)getServletName {
 return @"GetChitFundOverview";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundOverviewRequest";
};

@end