
//  Created by json-to-model
#import "GetChitFundDetailsResponseResponse.h"
@implementation GetChitFundDetailsResponseResponse


@synthesize servletGroup;
@synthesize status;
@synthesize data;
@synthesize servletName;
@synthesize infoMsg;
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