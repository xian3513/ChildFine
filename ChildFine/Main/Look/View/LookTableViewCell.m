//
//  LookTableViewCell.m
//  ChildFine
//
//  Created by xian on 15/11/4.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "LookTableViewCell.h"

@implementation LookTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [self.upLab familyLableSmallfontAndGrayColor];
    [self.downLab familyLableSmallfontAndGrayColor];
    self.backgroundCellView.layer.borderColor = RGBA(224,224, 224, 1).CGColor;
    self.backgroundCellView.layer.borderWidth = 1;
}

- (void)setName:(NSString *)name {
    self.upLab.text = name;
}

- (void)setPrompt:(NSString *)prompt {
    NSLog(@"prompt:%@",prompt);
    if([prompt isEqualToString:@""]){
        self.blackLineView.hidden = YES;
        self.downLab.hidden = YES;
    }else {
        self.downLab.text = prompt;
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
