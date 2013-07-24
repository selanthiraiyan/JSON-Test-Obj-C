
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "DeleteChitFundRequestChitFundToBeDeleted.h"
@interface DeleteChitFundRequestData : ModelBase


@property (strong) DeleteChitFundRequestChitFundToBeDeleted *chitFundToBeDeleted;
@property (strong) NSString *userId;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end