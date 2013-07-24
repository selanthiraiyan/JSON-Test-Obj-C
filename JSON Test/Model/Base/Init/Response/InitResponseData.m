
//  Created by json-to-model
#import "InitResponseData.h"
@implementation InitResponseData


@synthesize userId;
- (NSString*)getServletName {
 return @"Init";
}
- (NSString*)getServletGroup {
 return @"Base";
}
- (NSString*)getClassNamePrefix {
 return @"InitResponse";
};

@end