
//  Created by json-to-model
#import "PaymentMadeForChitRequestRequest.h"
@implementation PaymentMadeForChitRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
- (NSString*)getServletName {
 return @"PaymentMadeForChit";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"PaymentMadeForChitRequest";
};

@end