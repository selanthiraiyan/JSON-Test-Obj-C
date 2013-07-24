
//  Created by json-to-model
#import "PaymentMadeForChitRequestData.h"
@implementation PaymentMadeForChitRequestData


@synthesize userId;
@synthesize chitTermPayment;
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