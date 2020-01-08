//
//  ZMJAddressModel.h
//  ZMJAddressPickerView
//
//  Created by qx on 2020/1/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMJAddressModel : NSObject

@end

@interface ZMJAddressListModel : NSObject

@property (copy, nonatomic) NSString *ID;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *post_code;
@property (copy, nonatomic) NSString *parent_id;
@property (copy, nonatomic) NSString *is_filter_view;
@property (copy, nonatomic) NSString *filter_sort;
@property (copy, nonatomic) NSString *firstchar;

@end

NS_ASSUME_NONNULL_END
