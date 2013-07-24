
//  Created by json-to-model
#import "AddChitFundResponseResponse.h"
@implementation AddChitFundResponseResponse


@synthesize servletGroup;
@synthesize status;
@synthesize data;
@synthesize servletName;
@synthesize infoMsg;
- (NSString*)getServletName {
 return @"AddChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"AddChitFundResponse";
};

@end