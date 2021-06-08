//
//  ViewController.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "BSKConsts.h"

@interface ViewController ()
@property(nonatomic,strong)UIScrollView * scrollView;
@property (nonatomic,strong) UIView *roundView;
@property (nonatomic,strong) UIButton *alarmClockButton;
@property (nonatomic,strong) UIButton *timeButton;
@property (nonatomic,strong) UIButton *secondButton;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initializeAperence];
}
#pragma mark - method
- (void)initializeAperence {
    [self.view addSubview:self.scrollView];
    [self.view addSubview:self.alarmClockButton];
    [self.view addSubview:self.timeButton];
    [self.view addSubview:self.secondButton];
    [self.view addSubview:self.roundView];
    
    // 滚动视图
    NSArray *array = @[@"1",@"2",@"3"];
    for (int i = 0; i < 3; i++) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 60, 100, 30)];
        label.text = array[i];
        [self.scrollView addSubview:label];
    }
}

#pragma mrk - action
- (void)buttonPressed:(UIButton *)sender {
    NSInteger index = sender.tag - 200;
    if (index == 0) {
        
    }
    if (index == 1) {
        
    }
    if (index == 2) {
        
    }
}
#pragma mark - getter
- (UIScrollView *)scrollView {
    if (_scrollView) {
        return _scrollView;
    }
    _scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = YES;
    _scrollView.contentSize = CGSizeMake(ScreenWidth*3, ScreenHeight-150);
    return _scrollView;
}

- (UIButton *)alarmClockButton {
    if (_alarmClockButton) {
        return _alarmClockButton;
    }
    _alarmClockButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [_alarmClockButton setTitle:@"闹钟" forState:UIControlStateNormal];
    _alarmClockButton.tag = 200;
    [_alarmClockButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return _alarmClockButton;
}

- (UIButton *)timeButton {
    if (_timeButton) {
        return _timeButton;
    }
    _timeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [_timeButton setTitle:@"计时" forState:UIControlStateNormal];
    _timeButton.tag = 201;
    [_timeButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return _timeButton;
}

- (UIButton *)secondButton {
    if (_secondButton) {
        return _secondButton;
    }
    _secondButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [_secondButton setTitle:@"秒表" forState:UIControlStateNormal];
    _secondButton.tag = 202;
    [_secondButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    return _secondButton;
}

- (UIView *)roundView {
    if (_roundView) {
        return _roundView;
    }
    _roundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,20, 20)];
    _roundView.layer.masksToBounds = YES;
    _roundView.layer.cornerRadius = 10;
    _roundView.backgroundColor = [UIColor whiteColor];
    return _roundView;
}
@end
