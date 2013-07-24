
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "InitResponseData.h"
@interface InitResponseResponse : ModelBase


@property (strong) NSString *servletGroup;
@property BOOL status;
@property (strong) InitResponseData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *infoMsg;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end