
//  Created by json-to-model
#import "DeleteChitFundRequestRequest.h"
@implementation DeleteChitFundRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
- (NSString*)getServletName {
 return @"DeleteChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"DeleteChitFundRequest";
};

@end