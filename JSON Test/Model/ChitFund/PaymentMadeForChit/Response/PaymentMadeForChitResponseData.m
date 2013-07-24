
//  Created by json-to-model
#import "PaymentMadeForChitResponseData.h"
@implementation PaymentMadeForChitResponseData


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