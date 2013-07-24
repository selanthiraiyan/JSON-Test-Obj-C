
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "AddChitFundRequestRequest.h"
#import "AddChitFundRequestEcho.h"
@interface AddChitFundRequestModel : ModelBase


@property (strong) AddChitFundRequestRequest *request;
@property (strong) AddChitFundRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end