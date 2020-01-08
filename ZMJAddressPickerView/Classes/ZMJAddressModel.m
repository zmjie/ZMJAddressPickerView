//
//  ZMJAddressModel.m
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "ZMJAddressModel.h"

#import <MJExtension/MJExtension.h>

@implementation ZMJAddressModel

@end

@implementation ZMJAddressListModel

+ (void)load {

    [self mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        
        return @{@"ID" : @"id"};
    }];
}

@end
