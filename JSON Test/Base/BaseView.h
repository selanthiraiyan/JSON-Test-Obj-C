//
//  BaseView.h
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BaseViewController;

@interface BaseView : UIView

- (id)initWithController:(BaseViewController*)controller;
- (void)createViews;

@property (strong) UIView *contentView;
@property (weak) BaseViewController *controller;

@end
