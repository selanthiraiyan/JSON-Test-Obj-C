
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface GetChitFundOverviewResponseData : ModelBase


@property (strong) NSString *userId;
@property (strong) NSMutableArray *chitOverview;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end