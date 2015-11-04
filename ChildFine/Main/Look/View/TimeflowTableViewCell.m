//
//  TimeflowTableViewCell.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "TimeflowTableViewCell.h"
#import "UILabel+Type.h"
@implementation TimeflowTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
    
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
//        NSInteger width = frame.size.width;
//        NSInteger height = frame.size.height;
//        NSInteger pace = 10;
//        UIView *backgroundView = [[UIView alloc] initWithFrame:CGRectMake(pace, 0, width-2*pace, height)];
//        backgroundView.backgroundColor = [UIColor whiteColor];
//        [self addSubview:backgroundView];
       

    }
    return self;
}

- (void)setContentViewAndLable {
     [self.upLab familyLableSmallfontAndGrayColor];
    [self.downLab familyLableSmallfontAndGrayColor];
    self.backgroundCellView.layer.borderColor = RGBA(193,193, 193, 1).CGColor;
    self.backgroundCellView.layer.borderWidth = 1;
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
