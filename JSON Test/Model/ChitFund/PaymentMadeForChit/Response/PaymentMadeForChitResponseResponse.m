
//  Created by json-to-model
#import "PaymentMadeForChitResponseResponse.h"
@implementation PaymentMadeForChitResponseResponse


@synthesize servletGroup;
@synthesize status;
@synthesize data;
@synthesize servletName;
@synthesize infoMsg;
- (NSString*)getServletName {
 return @"PaymentMadeForChit";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"PaymentMadeForChitResponse";
};

@end