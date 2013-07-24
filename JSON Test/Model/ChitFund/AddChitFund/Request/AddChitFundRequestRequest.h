
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "AddChitFundRequestData.h"
@interface AddChitFundRequestRequest : ModelBase


@property (strong) AddChitFundRequestData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *servletGroup;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end