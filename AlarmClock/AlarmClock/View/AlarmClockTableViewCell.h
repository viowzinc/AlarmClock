//
//  AlarmClockTableViewCell.h
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlarmClockTableViewCell : UITableViewCell
@property (nonatomic,strong) UILabel *alarmClockLabel;
@property (nonatomic,strong) UILabel *numberLabel;
@property (nonatomic,strong) UILabel *startLabel;
@property (nonatomic,strong) UISwitch *alarmSwitch;
@end
