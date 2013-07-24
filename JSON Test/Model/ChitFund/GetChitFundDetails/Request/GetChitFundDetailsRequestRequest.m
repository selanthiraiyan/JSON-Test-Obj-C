
//  Created by json-to-model
#import "GetChitFundDetailsRequestRequest.h"
@implementation GetChitFundDetailsRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
- (NSString*)getServletName {
 return @"GetChitFundDetails";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundDetailsRequest";
};

@end