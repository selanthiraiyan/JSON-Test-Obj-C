
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
@interface PaymentMadeForChitResponseData : ModelBase


@property (strong) NSString *infoMsg;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end