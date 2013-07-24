
//  Created by json-to-model
#import "DeleteChitFundResponseResponse.h"
@implementation DeleteChitFundResponseResponse


@synthesize servletGroup;
@synthesize status;
@synthesize data;
@synthesize servletName;
@synthesize infoMsg;
- (NSString*)getServletName {
 return @"DeleteChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"DeleteChitFundResponse";
};

@end