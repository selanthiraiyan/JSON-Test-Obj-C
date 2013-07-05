//
//  RequestJSONObject.h
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/4/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModelBaseProtocol.h"

@interface RequestJSONObject : NSObject

- (id)initWithData:(id<JSONModelBaseProtocol>)data;
- (NSString*)toJSONString;

- (NSString*)getServletURL;

@property (strong) NSMutableDictionary *echo;

@end
