//
//  UIView+ZMJAddressPickerView.m
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "UIView+ZMJAddressPickerView.h"

#import "ZMJAddressPickerView_Macro.h"

@implementation UIView (ZMJAddressPickerView)

- (void)setZmj_width:(CGFloat)zmj_width {
    
    CGRect zmj_rect = self.frame;
    zmj_rect.size.width = zmj_width;
    self.frame = zmj_rect;
}

- (CGFloat)zmj_width {
    
    return self.frame.size.width;
}

- (void)setZmj_height:(CGFloat)zmj_height {
    
    CGRect zmj_rect = self.frame;
    zmj_rect.size.height = zmj_height;
    self.frame = zmj_rect;
}

- (CGFloat)zmj_height {
    
    return self.frame.size.height;
}

- (void)setZmj_x:(CGFloat)zmj_x {
    
    CGRect zmj_rect = self.frame;
    zmj_rect.origin.x = zmj_x;
    self.frame = zmj_rect;
}

- (CGFloat)zmj_x {
    
    return self.frame.origin.x;
}

- (void)setZmj_y:(CGFloat)zmj_y {
    
    CGRect zmj_rect = self.frame;
    zmj_rect.origin.y = zmj_y;
    self.frame = zmj_rect;
}

- (CGFloat)zmj_y {
    
    return self.frame.origin.y;
}

- (void)setZmj_centerX:(CGFloat)zmj_centerX {
    
    CGPoint zmj_rect = self.center;
    zmj_rect.x = zmj_centerX;
    self.center = zmj_rect;
}

- (CGFloat)zmj_centerX {
    
    return self.center.x;
}

- (void)setZmj_centerY:(CGFloat)zmj_centerY {
    
    CGPoint zmj_rect = self.center;
    zmj_rect.y = zmj_centerY;
    self.center = zmj_rect;
}

- (CGFloat)zmj_centerY {
    
    return self.center.y;
}

+ (void)zmj_animationSheetView:(UIView *)view isShow:(BOOL)bl {
    
    CAKeyframeAnimation *zmj_keyframeAnimation = [CAKeyframeAnimation animation];
    zmj_keyframeAnimation.keyPath = @"transform.translation.y";
    
    if (bl) {
        
        zmj_keyframeAnimation.values = @[[NSNumber numberWithInt:view.zmj_height],
                                         @(-20),
                                         @(15),
                                         @(-10),
                                         @(5)];

        zmj_keyframeAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        
    }else {
        
        zmj_keyframeAnimation.values = @[@(0),
                                         @(-30),
                                         [NSNumber numberWithInt:view.zmj_height]];
        
        zmj_keyframeAnimation.keyTimes = @[@0.0f,
                                           @0.25f,
                                           @0.75f];
        
        zmj_keyframeAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    }
    
    zmj_keyframeAnimation.duration = 0.6f;
    zmj_keyframeAnimation.fillMode = kCAFillModeForwards;
    zmj_keyframeAnimation.removedOnCompletion = NO;
    [view.layer addAnimation:zmj_keyframeAnimation forKey:@"zmj_keyframeAnimation"];
}

+ (void)zmj_animationAlertView:(UIView *)view isShow:(BOOL)bl {
    
    CAKeyframeAnimation *zmj_keyframeAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    
    if (bl) {
        
        zmj_keyframeAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)],
                                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
                                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.9f, 0.9f, 1.0f)],
                                         [NSValue valueWithCATransform3D:CATransform3DIdentity]];
        
        zmj_keyframeAnimation.keyTimes = @[@0.0f,
                                           @0.5f,
                                           @0.75f,
                                           @1.0f];
        
        zmj_keyframeAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    }else {
        
        zmj_keyframeAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DIdentity],
                                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
                                         [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)]];
        
        zmj_keyframeAnimation.keyTimes = @[@0.0f,
                                           @0.45f,
                                           @0.9f];
        
        zmj_keyframeAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                                  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    }
    
    zmj_keyframeAnimation.duration = 0.6f;
    zmj_keyframeAnimation.fillMode = kCAFillModeForwards;
    zmj_keyframeAnimation.removedOnCompletion = NO;
    [view.layer addAnimation:zmj_keyframeAnimation forKey:@"zmj_keyframeAnimation"];
}

@end
