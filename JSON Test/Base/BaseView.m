//
//  BaseView.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "BaseView.h"

#define HEADER_HEIGHT 50
#define FOOTER_HEIGHT 80

@interface BaseView()

@property (strong) UIView *headerView;
@property (strong) UIView *footerView;

@end

@implementation BaseView
@synthesize controller;
@synthesize contentView;
@synthesize headerView;
@synthesize footerView;
- (id)initWithController:(BaseViewController*)controller1
{
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    self = [super initWithFrame:screenRect];
    if (self) {
        self.controller = controller1;
        [self createViews];
    }
    return self;
}

- (void)createViews
{
    self.headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, HEADER_HEIGHT)];
    self.headerView.backgroundColor = [UIColor redColor];
    [self addSubview:self.headerView];
    
    self.contentView = [[UIView alloc]initWithFrame:CGRectMake(0, self.headerView.frame.origin.y + self.headerView.frame.size.height, self.frame.size.width, self.frame.size.height - (HEADER_HEIGHT + FOOTER_HEIGHT))];
    self.contentView.backgroundColor = [UIColor greenColor];
    [self addSubview:self.contentView];
    
    self.footerView = [[UIView alloc]initWithFrame:CGRectMake(0, self.contentView.frame.origin.y + self.contentView.frame.size.height, self.frame.size.width, FOOTER_HEIGHT)];
    self.footerView.backgroundColor = [UIColor grayColor];
    [self addSubview:self.footerView];
}
@end
