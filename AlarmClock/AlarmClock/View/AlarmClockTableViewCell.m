//
//  AlarmClockTableViewCell.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AlarmClockTableViewCell.h"
#import "BSKConsts.h"
@implementation AlarmClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initializeAperance];
    }
    return self;
}

#pragma mark - private method
- (void)initializeAperance {
    [self.contentView addSubview:self.alarmClockLabel];
    [self.contentView addSubview:self.numberLabel];
    [self.contentView addSubview:self.startLabel];
    [self.contentView addSubview:self.alarmSwitch];
}

#pragma mark - getter
- (UILabel *)alarmClockLabel {
    if (_alarmClockLabel) {
        return _alarmClockLabel;
    }
    _alarmClockLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, 100, 30)];
    _alarmClockLabel.textColor = [UIColor whiteColor];
    return _alarmClockLabel;
}

- (UILabel *)numberLabel {
    if (_numberLabel) {
        return _numberLabel;
    }
    _numberLabel = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMaxX(self.alarmClockLabel.frame) + 10, 10, 150, 30)];
    _numberLabel.textColor = [UIColor whiteColor];
    _numberLabel.font = [UIFont systemFontOfSize:15];
    _numberLabel.textColor = [UIColor colorWithRed:0.5115 green:0.5197 blue:0.5303 alpha:1.0];
    return _numberLabel;
}

- (UILabel *)startLabel {
    if (_startLabel) {
        return _startLabel;
    }
    _startLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, CGRectGetMaxY(self.alarmClockLabel.frame) + 10, 150, 30)];
    _startLabel.textColor = [UIColor whiteColor];
    _startLabel.font = [UIFont systemFontOfSize:15];
    _startLabel.textColor = [UIColor colorWithRed:0.5115 green:0.5197 blue:0.5303 alpha:1.0];
    return _startLabel;
}

- (UISwitch *)alarmSwitch {
    if (_alarmSwitch) {
        return _alarmSwitch;
    }
    _alarmSwitch = [[UISwitch alloc]init];
    _alarmSwitch.center = CGPointMake(ScreenWidth-50, CGRectGetMidY(self.frame));
    _alarmSwitch.transform = CGAffineTransformMakeScale(0.75, 0.75);
    _alarmSwitch.onTintColor = [UIColor colorWithRed:0.2032 green:0.4936 blue:0.4936 alpha:1.0];
    _alarmSwitch.thumbTintColor = [UIColor whiteColor];
    _alarmSwitch.layer.borderWidth = 1;
    _alarmSwitch.layer.borderColor = [UIColor grayColor].CGColor;
    return _alarmSwitch;
}

@end
