//
//  AddCustomTableViewCell.m
//  AlarmClock
//
//  Created by apple on 16/9/28.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "AddCustomTableViewCell.h"
#import "BSKConsts.h"
@implementation AddCustomTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initializeAperance];
    }
    return self;
}

#pragma mark - private method
- (void)initializeAperance {
    [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.detailLabel];
}

#pragma mark - getter
- (UILabel *)titleLabel {
    if (_titleLabel) {
        return _titleLabel;
    }
    _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, 80, 30)];
    _titleLabel.textColor = [UIColor whiteColor];
    return _titleLabel;
}


- (UILabel *)detailLabel {
    if (_detailLabel) {
        return _detailLabel;
    }
    _detailLabel = [[UILabel alloc]initWithFrame:CGRectMake(ScreenWidth - ScreenWidth/2, 10, ScreenWidth / 2, 30)];
    _detailLabel.textColor = [UIColor whiteColor];
    _detailLabel.textAlignment = NSTextAlignmentRight;
    return _detailLabel;
}
@end
