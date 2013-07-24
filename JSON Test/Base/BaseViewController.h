//
//  BaseViewController.h
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RequestJSONObject.h"

@interface BaseViewController : UIViewController

- (id)initWithViewClass:(Class)viewClassName;
- (void)sendRequest:(id<JSONModelBaseProtocol>)data;
- (void)processResponse:(NSDictionary*)response; //Override this method to receive response

@end
