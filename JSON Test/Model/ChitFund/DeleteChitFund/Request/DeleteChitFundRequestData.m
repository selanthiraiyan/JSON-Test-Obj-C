
//  Created by json-to-model
#import "DeleteChitFundRequestData.h"
@implementation DeleteChitFundRequestData


@synthesize chitFundToBeDeleted;
@synthesize userId;
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