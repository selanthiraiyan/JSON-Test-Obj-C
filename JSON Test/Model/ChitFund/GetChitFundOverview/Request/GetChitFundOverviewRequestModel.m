
//  Created by json-to-model
#import "GetChitFundOverviewRequestModel.h"
@implementation GetChitFundOverviewRequestModel


@synthesize request;
@synthesize echo;
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