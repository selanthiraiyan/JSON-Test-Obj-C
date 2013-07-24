
//  Created by json-to-model
#import "GetChitFundDetailsResponseChitFund.h"
@implementation GetChitFundDetailsResponseChitFund


@synthesize id;
@synthesize name;
@synthesize endsOnDate;
@synthesize totalAmountPaid;
@synthesize startsOnDateInMillis;
@synthesize numberOfTermsPaid;
@synthesize isCommissionAvailAfterTakingChit;
@synthesize userId;
@synthesize chitTermDetail;
@synthesize isYetToBeTaken;
@synthesize endsOnDateInMillis;
@synthesize amountPerTerm;
@synthesize chitValue;
@synthesize startsOnDate;
@synthesize totalNumberOfTerms;
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