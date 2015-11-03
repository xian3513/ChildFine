//
//  RootHeaderView.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "RootHeaderView.h"

@implementation RootHeaderView {
    
    UIImageView *_upImageView;
    UIView *_downView;
    
    UILabel *_namelab;
    UIImageView *_sexImageView;
    UIImageView *_QRCodeImageView;
    UILabel *_childClassLab;
    UILabel *_ageAndOnlineDaysLab;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]){
        self.backgroundColor = [UIColor yellowColor];
        NSInteger height = frame.size.height;
        NSInteger width = frame.size.width;
        _upImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, height/2)];
        _upImageView.image = [UIImage imageNamed:@"themeBackground"];
        [self addSubview:_upImageView];
        _namelab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, _upImageView.frame.size.height/2)];
        
       
    }
    return self;
}


@end
