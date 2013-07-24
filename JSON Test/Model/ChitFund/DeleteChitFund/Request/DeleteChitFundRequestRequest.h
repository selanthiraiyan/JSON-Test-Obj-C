
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "DeleteChitFundRequestData.h"
@interface DeleteChitFundRequestRequest : ModelBase


@property (strong) DeleteChitFundRequestData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *servletGroup;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end