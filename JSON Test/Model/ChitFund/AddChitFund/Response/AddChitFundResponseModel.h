
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "AddChitFundResponseResponse.h"
#import "AddChitFundResponseEcho.h"
@interface AddChitFundResponseModel : ModelBase


@property (strong) AddChitFundResponseResponse *response;
@property (strong) AddChitFundResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end