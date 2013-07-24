
//  Created by json-to-model
#import "AddChitFundRequestChit.h"
@implementation AddChitFundRequestChit


@synthesize auctionOnceInNumberOfMonths;
@synthesize isCommissionAvailAfterTakingChit;
@synthesize totalAmount;
@synthesize chitName;
@synthesize amountPerTerm;
@synthesize startFromDateInMillis;
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