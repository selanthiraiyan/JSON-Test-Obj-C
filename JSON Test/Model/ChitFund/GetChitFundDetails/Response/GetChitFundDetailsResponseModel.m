
//  Created by json-to-model
#import "GetChitFundDetailsResponseModel.h"
@implementation GetChitFundDetailsResponseModel


@synthesize response;
@synthesize echo;
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