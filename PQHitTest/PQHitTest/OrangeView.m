//
//  OrangeView.m
//  PQHitTest
//
//  Created by ios on 16/8/27.
//  Copyright © 2016年 ios. All rights reserved.
//

#import "OrangeView.h"

@implementation OrangeView

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    NSLog(@"%s",__func__);
    return [super hitTest:point withEvent:event];
}


//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
//    //orange view
//    return nil;
//}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
//    NSLog(@"%s",__func__);
//}
@end
