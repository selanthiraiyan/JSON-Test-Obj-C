
//  Created by json-to-model
#import "InitResponseResponse.h"
@implementation InitResponseResponse


@synthesize servletGroup;
@synthesize status;
@synthesize data;
@synthesize servletName;
@synthesize infoMsg;
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