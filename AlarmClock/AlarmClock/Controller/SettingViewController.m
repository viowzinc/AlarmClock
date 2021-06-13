//
//  SettingViewController.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - getter
- (UITableView *)tableView {
    if (_tableView) {
        return _tableView;
    }
    return _tableView;
}

@end
