
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface AddChitFundRequestChit : ModelBase


@property (strong) NSNumber *auctionOnceInNumberOfMonths;
@property BOOL isCommissionAvailAfterTakingChit;
@property (strong) NSNumber *totalAmount;
@property (strong) NSString *chitName;
@property (strong) NSNumber *amountPerTerm;
@property (strong) NSNumber *startFromDateInMillis;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end