
//  Created by json-to-model
#import "InitRequestRequest.h"
@implementation InitRequestRequest


@synthesize data;
@synthesize servletName;
@synthesize servletGroup;
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