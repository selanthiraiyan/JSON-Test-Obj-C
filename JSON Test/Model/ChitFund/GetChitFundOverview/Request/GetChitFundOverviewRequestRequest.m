
//  Created by json-to-model
#import "GetChitFundOverviewRequestRequest.h"
@implementation GetChitFundOverviewRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
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