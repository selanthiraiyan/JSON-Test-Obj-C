
//  Created by json-to-model
#import "GetChitFundDetailsRequestData.h"
@implementation GetChitFundDetailsRequestData


@synthesize id;
@synthesize userId;
- (NSString*)getServletName {
 return @"GetChitFundDetails";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"GetChitFundDetailsRequest";
};

@end