//
//  UIColor+ZMJAddressPickerView.h
//  ZMJAddressPickerView
//
//  Created by qx on 2020/1/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (ZMJAddressPickerView)

+ (UIColor *)zmj_dynamicColor:(UIColor *)lightColor zmj_darkColor:(UIColor *)darkColor;

@end

NS_ASSUME_NONNULL_END
