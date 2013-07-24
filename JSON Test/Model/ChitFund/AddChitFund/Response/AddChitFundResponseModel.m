
//  Created by json-to-model
#import "AddChitFundResponseModel.h"
@implementation AddChitFundResponseModel


@synthesize response;
@synthesize echo;
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