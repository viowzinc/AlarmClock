//
//  AddAlarmClockViewController.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AddAlarmClockViewController.h"
#import "BSKConsts.h"
#import "AddCustomTableViewCell.h"
@interface AddAlarmClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UIButton *cancelButton;
@property (nonatomic,strong) UIButton *sureButton;
@end

@implementation AddAlarmClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - action
- (void)cancelButtonPressed:(UIButton *)sender {
    
}


- (void)sureButtonPressed:(UIButton *)sender {
    
}


#pragma mark - delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"addAlarmClock";
    AddCustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[AddCustomTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

#pragma mark - getter
- (UITableView *)tableView {
    if (_tableView) {
        return _tableView;
    }
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 200,ScreenWidth, ScreenHeight - 100)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    return _tableView;
}

- (UIButton *)cancelButton {
    if (_cancelButton) {
        return _cancelButton;
    }
    _cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _cancelButton = [[UIButton alloc]initWithFrame:CGRectMake(20, 30, 30, 30)];
    [_cancelButton setBackgroundImage:[UIImage imageNamed:@"取消"] forState:UIControlStateNormal];
    [_cancelButton addTarget:self action:@selector(cancelButtonPressed:) forControlEvents:UIControlEventTouchUpOutside];
    return _cancelButton;
}

- (UIButton *)sureButton {
    if (_sureButton) {
        return _sureButton;
    }
    _sureButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _sureButton = [[UIButton alloc]initWithFrame:CGRectMake(ScreenWidth - 50, 30, 30, 30)];
    [_sureButton setBackgroundImage:[UIImage imageNamed:@"确定"] forState:UIControlStateNormal];
    [_sureButton addTarget:self action:@selector(sureButtonPressed:) forControlEvents:UIControlEventTouchUpOutside];
    return _sureButton;
}
@end
