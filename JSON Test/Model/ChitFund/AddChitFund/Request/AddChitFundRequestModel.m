
//  Created by json-to-model
#import "AddChitFundRequestModel.h"
@implementation AddChitFundRequestModel


@synthesize request;
@synthesize echo;
- (NSString*)getServletName {
 return @"AddChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"AddChitFundRequest";
};

@end