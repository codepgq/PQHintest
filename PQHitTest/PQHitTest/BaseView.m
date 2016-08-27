//
//  BaseView.m
//  PQHitTest
//
//  Created by ios on 16/8/27.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView



//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    
//    return nil;
//}

//
//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    NSLog(@"%s",__func__);
//    return [super hitTest:point withEvent:event];
//}

//实现原理
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//   1、检查自己是能否接受触摸事件
    //不接受事件或者隐藏或者透明，都返回nil，不是最合适的View
    if (self.userInteractionEnabled == NO || self.hidden == YES || self.alpha == 0) {
        return nil;
    }
//   2、检测触摸点是否在自己身上
    //如果点不在控件上，返回nil
    if (![self pointInside:point withEvent:event]) {
        return nil;
    }
//   3、从后往前遍历子控件，重复1 2
    NSInteger count = self.subviews.count;
    for (NSInteger i = count - 1; i >= 0; i--) {
        UIView * view = self.subviews[i];
        CGPoint viewP = [self convertPoint:point toView:view];
        
        if ([view hitTest:viewP withEvent:event]) {
            NSLog(@"%@",view);
            return view;
        }
    }
    
//   4、如果没有符合的子控件，那么自己就是合适的View
    NSLog(@"%@",self);
    return self;
    
}



@end
