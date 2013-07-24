
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface GetChitFundDetailsResponseChitTermDetail : ModelBase


@property (strong) NSNumber *termDateInMillis;
@property BOOL isSelfTaken;
@property BOOL isUpForPaymentTerm;
@property (strong) NSNumber *termNumber;
@property (strong) NSNumber *paidAmountForThisTerm;
@property BOOL isPaymentMade;
@property (strong) NSString *termDate;
@property (strong) NSNumber *advisableAmountToTakeChit;
@property (strong) NSString *takenBy;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end