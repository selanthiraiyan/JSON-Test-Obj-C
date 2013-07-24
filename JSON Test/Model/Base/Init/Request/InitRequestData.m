
//  Created by json-to-model
#import "InitRequestData.h"
@implementation InitRequestData


@synthesize userId;
- (NSString*)getServletName {
 return @"Init";
}
- (NSString*)getServletGroup {
 return @"Base";
}
- (NSString*)getClassNamePrefix {
 return @"InitRequest";
};

@end