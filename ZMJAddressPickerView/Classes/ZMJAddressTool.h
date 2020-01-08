//
//  ZMJAddressTool.h
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZMJAddressTool : NSObject

+ (NSBundle *)zmj_getBundle;

@property (strong, nonatomic) NSArray *zmj_shengArr;
@property (strong, nonatomic) NSArray *zmj_shiArr;
@property (strong, nonatomic) NSArray *zmj_xianArr;

+ (NSArray *)zmj_getAddressArr:(NSArray *)array zmj_parentID:(NSString *)ID;

+ (NSInteger)zmj_getAddressRowArr:(NSArray *)array zmj_ID:(NSString *)ID;

@end

NS_ASSUME_NONNULL_END
