
//  Created by json-to-model
#import "DeleteChitFundResponseData.h"
@implementation DeleteChitFundResponseData


@synthesize userId;
@synthesize chitId;
- (NSString*)getServletName {
 return @"DeleteChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"DeleteChitFundResponse";
};

@end