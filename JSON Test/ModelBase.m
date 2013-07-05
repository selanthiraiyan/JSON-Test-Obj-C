//
//  ModelBase.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/4/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "ModelBase.h"
#import <objc/runtime.h>

@implementation ModelBase

- (id)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if (self) {
        unsigned int outCount, i;
        objc_property_t *properties = class_copyPropertyList(self.class, &outCount);
        for (i = 0; i < outCount; i++) {
            NSString *propertyName;
            objc_property_t property = properties[i];
            propertyName = [NSString stringWithCString:property_getName(property)];
            
            id myObject = [dict valueForKey:propertyName];

            if (myObject == nil) {
                continue;
            }
            

            if ([myObject isKindOfClass:[NSArray class]] == NO) {
                [self setValue:myObject forKey:propertyName];
            }
            else {
                NSString *text = propertyName;
                NSString *capitalized = [[[text substringToIndex:1] uppercaseString] stringByAppendingString:[text substringFromIndex:1]];
                
                NSMutableArray *array = [NSMutableArray array];
                for (NSDictionary *dict in myObject) {
                   [array addObject:[[NSClassFromString(capitalized) alloc]initWithDict:dict]];
                }
                [self setValue:array forKey:propertyName];
            }
        }
    }
    return self;
}

- (NSDictionary*)toDict
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList(self.class, &outCount);
    for (i = 0; i < outCount; i++) {
        NSString *propertyName;
        objc_property_t property = properties[i];
    	propertyName = [NSString stringWithCString:property_getName(property)];
        id myObject = [self valueForKey:propertyName];
        
        if ([myObject isKindOfClass:[NSArray class]] == NO) {
            [dict setObject:myObject forKey:propertyName];
        }
        else {
            NSMutableArray *dictArray = [NSMutableArray array];
            for (id object in myObject) {
                [dictArray addObject:[object toDict]];
            }
            [dict setObject:dictArray forKey:propertyName];
        }
    }
    return dict;
}

- (NSString*)toJSONString
{
    
    NSDictionary *dict = [self toDict];
    NSError *error = nil;
    //convert object to data
    NSData* jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       options:NSJSONWritingPrettyPrinted error:&error];
    
    return [[NSString alloc] initWithData:jsonData
                                 encoding:NSUTF8StringEncoding];;
}
@end
