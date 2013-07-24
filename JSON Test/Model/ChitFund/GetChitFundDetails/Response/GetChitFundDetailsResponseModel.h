
//  Created by json-to-model
#import <Foundation/Foundation.h>
#import "ModelBase.h"
#import "GetChitFundDetailsResponseResponse.h"
#import "GetChitFundDetailsResponseEcho.h"
@interface GetChitFundDetailsResponseModel : ModelBase


@property (strong) GetChitFundDetailsResponseResponse *response;
@property (strong) GetChitFundDetailsResponseEcho *echo;
- (NSString*)getServletName;
- (NSString*)getServletGroup;
- (NSString*)getClassNamePrefix;;

@end