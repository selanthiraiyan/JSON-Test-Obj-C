
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface GetChitFundDetailsResponseChitFund : ModelBase


@property (strong) NSNumber *id;
@property (strong) NSString *name;
@property (strong) NSString *endsOnDate;
@property (strong) NSNumber *totalAmountPaid;
@property (strong) NSNumber *startsOnDateInMillis;
@property (strong) NSNumber *numberOfTermsPaid;
@property BOOL isCommissionAvailAfterTakingChit;
@property (strong) NSString *userId;
@property (strong) NSMutableArray *chitTermDetail;
@property BOOL isYetToBeTaken;
@property (strong) NSNumber *endsOnDateInMillis;
@property (strong) NSNumber *amountPerTerm;
@property (strong) NSNumber *chitValue;
@property (strong) NSString *startsOnDate;
@property (strong) NSNumber *totalNumberOfTerms;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end