//
//  FlowContentTableViewCell.m
//  ChildFine
//
//  Created by xian on 15/11/5.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "FlowContentTableViewCell.h"

@implementation FlowContentTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.nameLab.font = [UIFont systemFontOfSize:13];
    self.classLab.font = [UIFont systemFontOfSize:11];
    self.classLab.textColor = RGBA(171, 171, 171, 1);
    self.timeLab.textColor = RGBA(171, 171, 171, 1);
    self.timeLab.font = [UIFont systemFontOfSize:11];
    
    self.contentLab.font = [UIFont systemFontOfSize:14];
    self.prompLab.font = [UIFont systemFontOfSize:12];
    self.prompLab.textColor = RGBA(171, 171, 171, 1);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
