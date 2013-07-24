
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "InitRequestRequest.h"
#import "InitRequestEcho.h"
@interface InitRequestModel : ModelBase


@property (strong) InitRequestRequest *request;
@property (strong) InitRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end