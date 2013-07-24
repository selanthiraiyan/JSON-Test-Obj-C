
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface InitResponseData : ModelBase


@property (strong) NSString *userId;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end