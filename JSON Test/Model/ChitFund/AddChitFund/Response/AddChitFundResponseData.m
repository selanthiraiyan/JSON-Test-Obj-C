
//  Created by json-to-model
#import "AddChitFundResponseData.h"
@implementation AddChitFundResponseData


@synthesize userId;
@synthesize chitId;
- (NSString*)getServletName {
 return @"AddChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"AddChitFundResponse";
};

@end