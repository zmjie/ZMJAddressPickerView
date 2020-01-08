//
//  ZMJAddressPickerView.h
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/4.
//

#import <UIKit/UIKit.h>

#import "ZMJAddressModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ZMJAddressPickerViewStyle) {
    ZMJAddressPickerViewSheet,
    ZMJAddressPickerViewAlert,
};

@protocol zmj_addressPickerViewDelegate <NSObject>

- (void)zmj_addressPickerViewStyle:(ZMJAddressPickerViewStyle)style zmj_shengObj:(ZMJAddressListModel *)obj0 zmj_shiObj:(ZMJAddressListModel *)obj1 zmj_xianObj:(ZMJAddressListModel *)obj2;

@end

@interface ZMJAddressPickerView : UIView

- (instancetype)initWithFrame:(CGRect)frame zmj_style:(ZMJAddressPickerViewStyle)style zmj_shengID:(nullable NSString *)shengID zmj_shiID:(nullable NSString *)shiID zmj_xianID:(nullable NSString *)xianID;

@property (weak, nonatomic) id<zmj_addressPickerViewDelegate>zmj_delegate;

- (void)zmj_show;
- (void)zmj_showInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
