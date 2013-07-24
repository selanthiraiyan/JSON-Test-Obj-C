
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "InitRequestData.h"
@interface InitRequestRequest : ModelBase


@property (strong) InitRequestData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *servletGroup;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end