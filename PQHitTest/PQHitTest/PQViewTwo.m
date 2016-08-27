//
//  PQViewTwo.m
//  PQHitTest
//
//  Created by ios on 16/8/27.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "PQViewTwo.h"
#import "PQButtonTwo.h"
@interface PQViewTwo ()

@property (nonatomic,weak) IBOutlet PQButtonTwo *button;

@end

@implementation PQViewTwo

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    CGPoint p = [self convertPoint:point toView:self.button];
        
    if ([self pointInside:p withEvent:event]) {
        return self.button;
    }
    return [super hitTest:point withEvent:event];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%s",__func__);
}

@end
