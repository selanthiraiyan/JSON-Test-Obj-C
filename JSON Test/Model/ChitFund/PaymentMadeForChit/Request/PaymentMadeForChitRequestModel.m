
//  Created by json-to-model
#import "PaymentMadeForChitRequestModel.h"
@implementation PaymentMadeForChitRequestModel


@synthesize request;
@synthesize echo;
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