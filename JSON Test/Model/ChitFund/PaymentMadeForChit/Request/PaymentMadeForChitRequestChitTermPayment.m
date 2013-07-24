
//  Created by json-to-model
#import "PaymentMadeForChitRequestChitTermPayment.h"
@implementation PaymentMadeForChitRequestChitTermPayment


@synthesize id;
@synthesize isSelfTaken;
@synthesize receivedTotalAmount;
@synthesize termNo;
@synthesize paidAmount;
@synthesize takenBy;
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