
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundOverviewResponseData.h"
@interface GetChitFundOverviewResponseResponse : ModelBase


@property (strong) NSString *servletGroup;
@property (strong) GetChitFundOverviewResponseData *data;
@property (strong) NSString *servletName;
@property BOOL status;
@property (strong) NSString *infoMsg;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end