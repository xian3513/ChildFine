//
//  basicTableViewCell.h
//  ChildFine
//
//  Created by xian on 15/11/4.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILabel+Type.h"

@interface BasicTableViewCell : UITableViewCell

@property (nonatomic,copy) NSString *name;

@property (nonatomic,copy) NSString *prompt;
- (void)setContentViewAndLable;
@end
