
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface GetChitFundDetailsRequestData : ModelBase


@property (strong) NSNumber *id;
@property (strong) NSString *userId;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end