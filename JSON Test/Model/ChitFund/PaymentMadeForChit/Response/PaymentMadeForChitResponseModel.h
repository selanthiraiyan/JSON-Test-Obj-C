
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "PaymentMadeForChitResponseResponse.h"
#import "PaymentMadeForChitResponseEcho.h"
@interface PaymentMadeForChitResponseModel : ModelBase


@property (strong) PaymentMadeForChitResponseResponse *response;
@property (strong) PaymentMadeForChitResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end