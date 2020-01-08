//
//  ZMJAddressTool.m
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "ZMJAddressTool.h"

#import "ZMJAddressModel.h"

@implementation ZMJAddressTool

+ (NSBundle *)zmj_getBundle {
    
    static NSBundle *zmj_bundle = nil;
    static dispatch_once_t zmj_oncePredicate;
    dispatch_once(&zmj_oncePredicate, ^{
        
        zmj_bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:self.class] pathForResource:@"ZMJAddress" ofType:@"bundle"]];
    });
    return zmj_bundle;
}

+ (NSArray *)zmj_getAddressArr:(NSArray *)array zmj_parentID:(NSString *)ID {
    
    NSMutableArray *zmj_array = [[NSMutableArray alloc] init];
    
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[ZMJAddressListModel class]]) {
            
            ZMJAddressListModel *zmj_addressListModel = (ZMJAddressListModel *)obj;
            
            if ([zmj_addressListModel.parent_id isEqualToString:ID]) {
                
                [zmj_array addObject:zmj_addressListModel];
            }
        }
    }];
    
    return zmj_array;
}

+ (NSInteger)zmj_getAddressRowArr:(NSArray *)array zmj_ID:(NSString *)ID {
    
    NSInteger zmj_row = 0;
    
    __block ZMJAddressListModel *zmj_addressListModel0;
    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        if ([obj isKindOfClass:[ZMJAddressListModel class]]) {
            
            ZMJAddressListModel *zmj_addressListModel1 = (ZMJAddressListModel *)obj;
            
            if ([zmj_addressListModel1.ID isEqualToString:ID]) {
                
                zmj_addressListModel0 = zmj_addressListModel1;
                *stop = YES;
            }
        }
    }];
    
    zmj_row = [array indexOfObject:zmj_addressListModel0];
    
    return zmj_row;
}

@end
