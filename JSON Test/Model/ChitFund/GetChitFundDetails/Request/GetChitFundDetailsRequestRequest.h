
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundDetailsRequestData.h"
@interface GetChitFundDetailsRequestRequest : ModelBase


@property (strong) GetChitFundDetailsRequestData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *servletGroup;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end