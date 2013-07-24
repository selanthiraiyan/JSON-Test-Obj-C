
//  Created by json-to-model
#import "GetChitFundOverviewResponseResponse.h"
@implementation GetChitFundOverviewResponseResponse


@synthesize servletGroup;
@synthesize data;
@synthesize servletName;
@synthesize status;
@synthesize infoMsg;
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