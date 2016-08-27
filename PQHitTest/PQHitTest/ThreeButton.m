//
//  ThreeButton.m
//  PQHitTest
//
//  Created by ios on 16/8/27.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "ThreeButton.h"

@interface ThreeButton ()

@property (nonatomic,weak) UIButton * imgBtn;

@end

@implementation ThreeButton{
    CGPoint _startP;
}

- (void)awakeFromNib{
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(80, -200, 200, 200);
    [button setImage:[UIImage imageNamed:@"222"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"bc"] forState:UIControlStateHighlighted];
    [self addSubview:button];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch * touce = [touches anyObject];
    _startP = [touce locationInView:self];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch * touce = [touches anyObject];
    CGPoint curP = [touce locationInView:self];
    
    CGFloat x = self.frame.origin.x + curP.x - _startP.x;
    CGFloat y = self.frame.origin.y + curP.y - _startP.y;
    
    self.frame = CGRectMake(x, y, self.frame.size.width, self.frame.size.height);
}

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    CGPoint isSub = [self convertPoint:point toView:self.subviews[0]];
//    if ([self.subviews[0] pointInside:isSub withEvent:event]) {
//        return self.subviews[0];
//    }else {
//        return [super hitTest:point withEvent:event];
//    }
//}

@end
