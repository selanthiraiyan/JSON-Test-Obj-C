
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface PaymentMadeForChitRequestChitTermPayment : ModelBase


@property (strong) NSNumber *id;
@property BOOL isSelfTaken;
@property (strong) NSNumber *receivedTotalAmount;
@property (strong) NSNumber *termNo;
@property (strong) NSNumber *paidAmount;
@property (strong) NSString *takenBy;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end