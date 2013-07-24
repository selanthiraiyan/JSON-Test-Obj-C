
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "InitResponseResponse.h"
#import "InitResponseEcho.h"
@interface InitResponseModel : ModelBase


@property (strong) InitResponseResponse *response;
@property (strong) InitResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end