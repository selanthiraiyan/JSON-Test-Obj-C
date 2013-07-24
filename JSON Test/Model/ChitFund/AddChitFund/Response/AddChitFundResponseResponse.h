
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "AddChitFundResponseData.h"
@interface AddChitFundResponseResponse : ModelBase


@property (strong) NSString *servletGroup;
@property BOOL status;
@property (strong) AddChitFundResponseData *data;
@property (strong) NSString *servletName;
@property (strong) NSString *infoMsg;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end