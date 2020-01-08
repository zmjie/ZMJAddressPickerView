//
//  ZMJAddressPickerView.h
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/4.
//

#import <UIKit/UIKit.h>

#import "ZMJAddressModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol zmj_addressPickerViewDelegate <NSObject>

- (void)zmj_addressPickerViewShengObj:(ZMJAddressListModel *)obj0 shiObj:(ZMJAddressListModel *)obj1 xianObj:(ZMJAddressListModel *)obj2;

@end

@interface ZMJAddressPickerView : UIView

- (instancetype)initWithFrame:(CGRect)frame zmj_shengID:(nullable NSString *)shengID zmj_shiID:(nullable NSString *)shiID zmj_xianID:(nullable NSString *)xianID;

@property (weak, nonatomic) id<zmj_addressPickerViewDelegate>zmj_delegate;

- (void)zmj_show;
- (void)zmj_showInView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
