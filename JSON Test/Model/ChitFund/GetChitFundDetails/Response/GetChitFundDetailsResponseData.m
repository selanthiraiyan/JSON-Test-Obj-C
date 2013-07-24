
//  Created by json-to-model
#import "GetChitFundDetailsResponseData.h"
@implementation GetChitFundDetailsResponseData


@synthesize chitFund;
@synthesize userId;
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