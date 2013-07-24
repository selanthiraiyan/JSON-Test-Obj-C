
//  Created by json-to-model
#import "GetChitFundDetailsResponseChitTermDetail.h"
@implementation GetChitFundDetailsResponseChitTermDetail


@synthesize termDateInMillis;
@synthesize isSelfTaken;
@synthesize isUpForPaymentTerm;
@synthesize termNumber;
@synthesize paidAmountForThisTerm;
@synthesize isPaymentMade;
@synthesize termDate;
@synthesize advisableAmountToTakeChit;
@synthesize takenBy;
- (NSString*)getServletName {
 return @"GetChitFundDetails";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundDetailsResponse";
};

@end