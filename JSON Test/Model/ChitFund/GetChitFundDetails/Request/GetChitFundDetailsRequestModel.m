
//  Created by json-to-model
#import "GetChitFundDetailsRequestModel.h"
@implementation GetChitFundDetailsRequestModel


@synthesize request;
@synthesize echo;
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