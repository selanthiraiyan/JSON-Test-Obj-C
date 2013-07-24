
//  Created by json-to-model
#import "InitResponseModel.h"
@implementation InitResponseModel


@synthesize response;
@synthesize echo;
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