
//  Created by json-to-model
#import "PaymentMadeForChitResponseModel.h"
@implementation PaymentMadeForChitResponseModel


@synthesize response;
@synthesize echo;
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