
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "PaymentMadeForChitRequestChitTermPayment.h"
@interface PaymentMadeForChitRequestData : ModelBase


@property (strong) NSString *userId;
@property (strong) PaymentMadeForChitRequestChitTermPayment *chitTermPayment;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end