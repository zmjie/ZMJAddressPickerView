//
//  NSString+ZMJAddressPickerView.m
//  ZMJAddressPickerView
//
//  Created by zmjie on 2020/1/7.
//

#import "NSString+ZMJAddressPickerView.h"

#import "ZMJAddressTool.h"

@implementation NSString (ZMJAddressPickerView)

+ (id)zmj_getJsonFileName:(NSString *)string {
    
    NSString *zmj_jsonPath = [[ZMJAddressTool zmj_getBundle] pathForResource:string ofType:@"json"];
    
    NSData *zmj_jsonData = [[NSData alloc] initWithContentsOfFile:zmj_jsonPath];
    
    NSError *zmj_error;
    
    id zmj_obj = [NSJSONSerialization JSONObjectWithData:zmj_jsonData options:NSJSONReadingAllowFragments error:&zmj_error];
    
    return zmj_obj;
}

@end
