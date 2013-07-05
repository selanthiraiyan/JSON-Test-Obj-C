//
//  RequestJSONObject.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/4/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "RequestJSONObject.h"

@interface RequestJSONObject()

@property (strong) NSMutableDictionary *base;
@property (strong) NSMutableDictionary *request;


@end

@implementation RequestJSONObject
@synthesize base;
@synthesize request;
@synthesize echo;
- (id)initWithData:(id<JSONModelBaseProtocol>)data1
{
    self = [super init];
    if (self) {
        base = [NSMutableDictionary dictionary];
        request = [NSMutableDictionary dictionary];
        echo = [NSMutableDictionary dictionary];
        
        [request setObject:[data1 toDict] forKey:@"data"];
        [request setObject:[data1 getServletName] forKey:@"servletName"];
        [request setObject:[data1 getServletGroup] forKey:@"servletGroup"];

        [base setObject:request forKey:@"request"];
        [base setObject:echo forKey:@"echo"];
    }
    return self;
}

- (NSString*)getServletURL
{
    return [NSString stringWithFormat:@"%@/%@", [self.request objectForKey:@"servletGroup"], [self.request objectForKey:@"servletName"]];
}

- (NSString*)toJSONString
{
    
    NSError *error = nil;
    //convert object to data
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:self.base
                                                       options:NSJSONWritingPrettyPrinted error:&error];
    
    return [[NSString alloc] initWithData:jsonData
                                 encoding:NSUTF8StringEncoding];;
}

@end
