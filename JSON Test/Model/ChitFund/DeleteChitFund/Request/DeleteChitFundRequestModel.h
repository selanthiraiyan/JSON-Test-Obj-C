
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "DeleteChitFundRequestRequest.h"
#import "DeleteChitFundRequestEcho.h"
@interface DeleteChitFundRequestModel : ModelBase


@property (strong) DeleteChitFundRequestRequest *request;
@property (strong) DeleteChitFundRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end