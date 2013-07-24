
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface GetChitFundOverviewResponseChitOverview : ModelBase


@property (strong) NSNumber *chitValue;
@property (strong) NSNumber *id;
@property (strong) NSNumber *numberOfTermsPaid;
@property (strong) NSNumber *totalNumberOfTerms;
@property (strong) NSString *name;
@property BOOL isYetToBeTaken;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end