
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "AddChitFundRequestChit.h"
@interface AddChitFundRequestData : ModelBase


@property (strong) NSString *userId;
@property (strong) AddChitFundRequestChit *chit;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end