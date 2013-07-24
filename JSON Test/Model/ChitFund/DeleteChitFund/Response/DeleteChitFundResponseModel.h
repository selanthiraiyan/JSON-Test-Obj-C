
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "DeleteChitFundResponseResponse.h"
#import "DeleteChitFundResponseEcho.h"
@interface DeleteChitFundResponseModel : ModelBase


@property (strong) DeleteChitFundResponseResponse *response;
@property (strong) DeleteChitFundResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end