//
//  FlowTwoTableViewCell.m
//  ChildFine
//
//  Created by xian on 15/11/10.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "FlowTwoTableViewCell.h"

@implementation FlowTwoTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.nameLab.font = [UIFont systemFontOfSize:15];
    self.classLab.font = [UIFont systemFontOfSize:12];
    self.classLab.textColor = RGBA(171, 171, 171, 1);
    self.timeLab.textColor = RGBA(171, 171, 171, 1);
    self.timeLab.font = [UIFont systemFontOfSize:11];
    self.contentLab.font = [UIFont systemFontOfSize:14];
    self.promptLab.font = [UIFont systemFontOfSize:13];
    self.promptLab.textColor = RGBA(171, 171, 171, 1);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
