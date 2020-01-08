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

@property (weak, nonatomic) IBOutlet UIButton *zmj_tapBtn1;
@property (weak, nonatomic) IBOutlet UIButton *zmj_tapBtn2;
@property (weak, nonatomic) IBOutlet UILabel *zmj_titleLabel1;
@property (weak, nonatomic) IBOutlet UILabel *zmj_titleLabel2;

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
    
    ZMJAddressPickerViewStyle zmj_style = ZMJAddressPickerViewSheet;
    
    if ([sender isEqual:_zmj_tapBtn2]) {
        
        zmj_style = ZMJAddressPickerViewAlert;
    }
    
    ZMJAddressPickerView *zmj_addressPickerView = [[ZMJAddressPickerView alloc] initWithFrame:self.view.bounds zmj_style:zmj_style zmj_shengID:_zmj_addressListModel0 ? _zmj_addressListModel0.ID : nil zmj_shiID:_zmj_addressListModel1 ? _zmj_addressListModel1.ID : nil zmj_xianID:_zmj_addressListModel2 ? _zmj_addressListModel2.ID : nil];
    zmj_addressPickerView.zmj_delegate = self;
    [zmj_addressPickerView zmj_show];
}

- (void)zmj_addressPickerViewStyle:(ZMJAddressPickerViewStyle)style zmj_shengObj:(ZMJAddressListModel *)obj0 zmj_shiObj:(ZMJAddressListModel *)obj1 zmj_xianObj:(ZMJAddressListModel *)obj2 {
    
    ZMJAddressListModel *zmj_addressListModel0 = (ZMJAddressListModel *)obj0;
    ZMJAddressListModel *zmj_addressListModel1 = (ZMJAddressListModel *)obj1;
    ZMJAddressListModel *zmj_addressListModel2 = (ZMJAddressListModel *)obj2;
    
    _zmj_addressListModel0 = zmj_addressListModel0;
    _zmj_addressListModel1 = zmj_addressListModel1;
    _zmj_addressListModel2 = zmj_addressListModel2;
    
    NSLog(@"%@-%@", zmj_addressListModel0.ID, zmj_addressListModel0.name);
    NSLog(@"%@-%@", zmj_addressListModel1.ID, zmj_addressListModel1.name);
    NSLog(@"%@-%@", zmj_addressListModel2.ID, zmj_addressListModel2.name);
    
    switch (style) {
            
        case ZMJAddressPickerViewSheet: {
            
            _zmj_titleLabel1.text = [NSString stringWithFormat:@"%@%@%@", zmj_addressListModel0.name, zmj_addressListModel1.name, zmj_addressListModel2.name];
        }
            break;
            
        case ZMJAddressPickerViewAlert: {
            
            _zmj_titleLabel2.text = [NSString stringWithFormat:@"%@%@%@", zmj_addressListModel0.name, zmj_addressListModel1.name, zmj_addressListModel2.name];
        }
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
