//
//  TimeflowTableViewCell.h
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicTableViewCell.h"

@interface TimeflowTableViewCell : BasicTableViewCell
@property (weak, nonatomic) IBOutlet UIView *backgroundCellView;

@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *imageViewArray;

@property (weak, nonatomic) IBOutlet UILabel *upLab;
@property (weak, nonatomic) IBOutlet UILabel *downLab;
@property (weak, nonatomic) IBOutlet UIImageView *logoImageView;

- (void)setContentViewAndLable;
@end
