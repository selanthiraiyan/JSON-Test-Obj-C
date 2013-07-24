
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundDetailsRequestRequest.h"
#import "GetChitFundDetailsRequestEcho.h"
@interface GetChitFundDetailsRequestModel : ModelBase


@property (strong) GetChitFundDetailsRequestRequest *request;
@property (strong) GetChitFundDetailsRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end