
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "PaymentMadeForChitRequestRequest.h"
#import "PaymentMadeForChitRequestEcho.h"
@interface PaymentMadeForChitRequestModel : ModelBase


@property (strong) PaymentMadeForChitRequestRequest *request;
@property (strong) PaymentMadeForChitRequestEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end