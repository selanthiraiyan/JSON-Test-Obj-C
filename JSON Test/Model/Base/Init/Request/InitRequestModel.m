
//  Created by json-to-model
#import "InitRequestModel.h"
@implementation InitRequestModel


@synthesize request;
@synthesize echo;
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