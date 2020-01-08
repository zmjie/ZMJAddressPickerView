//
//  ZMJViewController.m
//  ZMJAddressPickerView
//
//  Created by zmjie on 01/07/2020.
//  Copyright (c) 2020 zmjie. All rights reserved.
//

#import "ZMJViewController.h"

#import <ZMJAddressPickerView/ZMJAddressPickerView.h>

@interface ZMJViewController () <zmj_addressPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *zmj_titleLabel;

@property (strong, nonatomic) ZMJAddressListModel *zmj_addressListModel0;
@property (strong, nonatomic) ZMJAddressListModel *zmj_addressListModel1;
@property (strong, nonatomic) ZMJAddressListModel *zmj_addressListModel2;

@end

@implementation ZMJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)zmj_btnAction:(UIButton *)sender {
    
    ZMJAddressPickerView *zmj_addressPickerView = [[ZMJAddressPickerView alloc] initWithFrame:self.view.bounds zmj_shengID:_zmj_addressListModel0 ? _zmj_addressListModel0.ID : nil zmj_shiID:_zmj_addressListModel1 ? _zmj_addressListModel1.ID : nil zmj_xianID:_zmj_addressListModel2 ? _zmj_addressListModel2.ID : nil];
    zmj_addressPickerView.zmj_delegate = self;
    [zmj_addressPickerView zmj_show];
}

- (void)zmj_addressPickerViewShengObj:(ZMJAddressListModel *)obj0 shiObj:(ZMJAddressListModel *)obj1 xianObj:(ZMJAddressListModel *)obj2 {
    
    ZMJAddressListModel *zmj_addressListModel0 = (ZMJAddressListModel *)obj0;
    ZMJAddressListModel *zmj_addressListModel1 = (ZMJAddressListModel *)obj1;
    ZMJAddressListModel *zmj_addressListModel2 = (ZMJAddressListModel *)obj2;
    
    _zmj_addressListModel0 = zmj_addressListModel0;
    _zmj_addressListModel1 = zmj_addressListModel1;
    _zmj_addressListModel2 = zmj_addressListModel2;
    
    NSLog(@"%@-%@", zmj_addressListModel0.ID, zmj_addressListModel0.name);
    NSLog(@"%@-%@", zmj_addressListModel1.ID, zmj_addressListModel1.name);
    NSLog(@"%@-%@", zmj_addressListModel2.ID, zmj_addressListModel2.name);
    
    _zmj_titleLabel.text = [NSString stringWithFormat:@"%@%@%@", zmj_addressListModel0.name, zmj_addressListModel1.name, zmj_addressListModel2.name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
