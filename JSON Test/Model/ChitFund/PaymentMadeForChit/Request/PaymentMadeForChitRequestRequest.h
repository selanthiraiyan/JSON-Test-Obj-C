
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "PaymentMadeForChitRequestData.h"
@interface PaymentMadeForChitRequestRequest : ModelBase


@property (strong) PaymentMadeForChitRequestData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *servletGroup;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end