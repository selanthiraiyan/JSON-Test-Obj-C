
//  Created by json-to-model
#import "DeleteChitFundRequestModel.h"
@implementation DeleteChitFundRequestModel


@synthesize request;
@synthesize echo;
- (NSString*)getServletName {
 return @"DeleteChitFund";
}
- (NSString*)getServletGroup {
 return @"ChitFund";
}
- (NSString*)getClassNamePrefix {
 return @"DeleteChitFundRequest";
};

@end