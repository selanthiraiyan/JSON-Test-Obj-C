
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundDetailsResponseChitFund.h"
@interface GetChitFundDetailsResponseData : ModelBase


@property (strong) GetChitFundDetailsResponseChitFund *chitFund;
@property (strong) NSString *userId;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end