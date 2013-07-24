//
//  TestView.m
//  JSON Test
//
//  Created by Sharma Elanthiraiyan on 7/24/13.
//  Copyright (c) 2013 Sharma Elanthiraiyan. All rights reserved.
//

#import "TestView.h"

@interface TestView()

@end

@implementation TestView

- (void)createViews
{
    [super createViews];
    UIScrollView *view = [[[NSBundle mainBundle] loadNibNamed:@"TestView" owner:self options:nil] objectAtIndex:0];
    view.contentSize = view.frame.size;
    view.frame = self.contentView.bounds;
    [self.contentView addSubview:view];
}

@end
