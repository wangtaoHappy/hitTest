//
//  CustomView.m
//  hitTest
//
//  Created by 王涛 on 16/11/3.
//  Copyright © 2016年 王涛. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    
    UIView *result = [super hitTest:point withEvent:event];
    
    if (!self.isUserInteractionEnabled || self.isHidden || self.alpha <= 0.01) {
        return nil;
    }
    for (UIView *subView in [self.subviews reverseObjectEnumerator]) {
        
        CGPoint convertedPoint = [subView convertPoint:point fromView:self];
        UIView *hitView = [subView hitTest:convertedPoint withEvent:event];
        if (hitView) {
            return hitView;
        }
    }
    return result;
}

@end
