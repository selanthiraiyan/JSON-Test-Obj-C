
//  Created by json-to-model
#import "AddChitFundRequestRequest.h"
@implementation AddChitFundRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
- (NSString*)getServletName {
 return @"AddChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"AddChitFundRequest";
};

@end