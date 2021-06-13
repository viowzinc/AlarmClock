//
//  AlarmClockViewController.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AlarmClockViewController.h"
#import "AlarmClockTableViewCell.h"
@interface AlarmClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UIButton *addButton;
@property (nonatomic,strong) UIButton *settingButton;
@end

@implementation AlarmClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
#pragma mark - private method
- (void)initializeAperance {
    [self.view addSubview:self.tableView];
    [self.view addSubview:self.addButton];
    [self.view addSubview:self.settingButton];
}
#pragma mark - action
- (void)addButtonPressed:(UIButton *)sender {
    
}

- (void)settingButtonPressed:(UIButton *)sender {
    
}

#pragma mark - delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"alarmClock";
    AlarmClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[AlarmClockTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
}
#pragma mark - getter
- (UITableView *)tableView {
    if (_tableView) {
        return _tableView;
    }
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    return _tableView;
}

- (UIButton *)addButton {
    if (_addButton) {
        return _addButton;
    }
    _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_addButton setImage:[UIImage imageNamed:@"新建"] forState:UIControlStateNormal];
    [_addButton addTarget:self action:@selector(addButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return _addButton;
}

- (UIButton *)settingButton {
    if (_settingButton) {
        return _settingButton;
    }
    _settingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_settingButton setImage:[UIImage imageNamed:@"设置"] forState:UIControlStateNormal];
    [_settingButton addTarget:self action:@selector(settingButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return _settingButton;
}
@end
