
//  Created by json-to-model
#import "AddChitFundRequestData.h"
@implementation AddChitFundRequestData


@synthesize userId;
@synthesize chit;
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