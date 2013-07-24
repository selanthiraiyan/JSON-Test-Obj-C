
//  Created by json-to-model
#import "GetChitFundOverviewResponseChitOverview.h"
@implementation GetChitFundOverviewResponseChitOverview


@synthesize chitValue;
@synthesize id;
@synthesize numberOfTermsPaid;
@synthesize totalNumberOfTerms;
@synthesize name;
@synthesize isYetToBeTaken;
- (NSString*)getServletName {
 return @"GetChitFundOverview";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundOverviewResponse";
};

@end