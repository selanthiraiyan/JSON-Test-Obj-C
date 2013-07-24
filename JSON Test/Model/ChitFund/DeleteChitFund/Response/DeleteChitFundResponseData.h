
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface DeleteChitFundResponseData : ModelBase


@property (strong) NSString *userId;
@property (strong) NSNumber *chitId;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end