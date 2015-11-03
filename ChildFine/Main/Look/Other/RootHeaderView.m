//
//  RootHeaderView.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "RootHeaderView.h"

@implementation RootHeaderView {
    //upView
    UILabel *_namelab;
    UIButton *_QRCodeButton;
    UILabel *_childClassLab;
    UIImageView *_upImageView;
    UIImageView *_sexImageView;
    UILabel *_ageAndOnlineDaysLab;
    
    //belowView
    UIView *_belowView;
    UILabel *_leafLab;
    UILabel *_flowerLab;
    UILabel *_collectionLab;
}

#pragma -init
- (instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]){
         self.backgroundColor = [UIColor yellowColor];
        //初始化视图
        NSInteger height = frame.size.height;
        NSInteger width = frame.size.width;
        [self initUpViewWithWidth:width height:height/2];
        [self initBelowViewWithWidth:width height:height/2];
      
        //初始化数据
        self.flowerCount = 0;
        self.collectionCount = 0;
        self.leafCount = 0;
    }
    return self;
}

- (void)initUpViewWithWidth:(NSInteger)width height:(NSInteger)height {
    _upImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    _upImageView.image = [UIImage imageNamed:@"themeBackground"];
    [self addSubview:_upImageView];
    
    _namelab = [UILabel FamilyLableBigFontWithFrame:CGRectMake(15, 0, 100, _upImageView.height/2)];
    [_upImageView addSubview:_namelab];
    
    _ageAndOnlineDaysLab = [UILabel FamilyLableSmallFontWithFrame:CGRectMake(_namelab.left, _namelab.bottom-5, _namelab.width, _upImageView.height/2)];
    [_upImageView addSubview:_ageAndOnlineDaysLab];
    
    _childClassLab = [UILabel FamilyLableMiddleFontWithFrame:CGRectMake(SCREEN_WIDTH-150, 0, 120, _upImageView.height/2)];
    _childClassLab.textAlignment = NSTextAlignmentRight;
    [_upImageView addSubview:_childClassLab];
}

- (void)initBelowViewWithWidth:(NSInteger)width height:(NSInteger)height {
    _belowView = [[UIView alloc]initWithFrame:CGRectMake(0, _upImageView.bottom, width, height)];
    _belowView.backgroundColor = [UIColor whiteColor];
   
    [self addSubview:_belowView];
    
    NSInteger D = height-5-5;
    _flowerLab = [UILabel FamilyLableSmallFontWithFrame:CGRectMake(0, 0, D,D)];
    _flowerLab.layer.masksToBounds = YES;
    _flowerLab.center = CGPointMake(width/2, height/2);
    _flowerLab.backgroundColor = [UIColor redColor];
    _flowerLab.numberOfLines = 2;
    _flowerLab.textAlignment = NSTextAlignmentCenter;
    _flowerLab.layer.cornerRadius = 20.0/40.0*D; //做Radius的适配
    [_belowView addSubview:_flowerLab];
    
    _collectionLab = [UILabel FamilyLableSmallFontWithFrame:CGRectMake(0, 0, D, D)];
    _collectionLab.layer.masksToBounds = YES;
    _collectionLab.center = CGPointMake(_flowerLab.left/2-D/4, height/2);
    _collectionLab.backgroundColor = [UIColor purpleColor];
    _collectionLab.numberOfLines = 2;
    _collectionLab.textAlignment = NSTextAlignmentCenter;
    _collectionLab.layer.cornerRadius = 20.0/40.0*D;
    [_belowView addSubview:_collectionLab];
    
    _leafLab = [UILabel FamilyLableSmallFontWithFrame:CGRectMake(0, 0, D, D)];
    _leafLab.layer.masksToBounds = YES;
    _leafLab.center = CGPointMake((width - _flowerLab.right)/2+_flowerLab.right+D/4, height/2);
    _leafLab.backgroundColor = [UIColor greenColor];
    _leafLab.numberOfLines = 2;
    _leafLab.textAlignment = NSTextAlignmentCenter;
    _leafLab.layer.cornerRadius = 20.0/40.0*D;
    [_belowView addSubview:_leafLab];

}

#pragma -- set
- (void)setName:(NSString *)name {
    _name = name;
    _namelab.text = name;
}

- (void)setAge:(NSInteger )age {
    _age = age;
    _ageAndOnlineDaysLab.text = [NSString stringWithFormat:@"%ld岁%ld天",_age,_onLineDays];
}

- (void)setOnLineDays:(NSInteger)onLineDays {
    _onLineDays = onLineDays;
    _ageAndOnlineDaysLab.text = [NSString stringWithFormat:@"%ld岁%ld天",_age,_onLineDays];
}

- (void)setChildClass:(NSString *)childClass {
    _childClass = childClass;
    _childClassLab.text = childClass;
}

- (void)setFlowerCount:(NSInteger)flowerCount {
    _flowerCount = flowerCount;
    NSString *str = [NSString stringWithFormat:@"%ld\n红花",flowerCount];
    [_flowerLab setAttributedStringLinesSpaceWithString:str space:2];
}

- (void)setCollectionCount:(NSInteger)collectionCount {
    _collectionCount = collectionCount;
    NSString *str = [NSString stringWithFormat:@"%ld\n收藏",collectionCount];
    [_collectionLab setAttributedStringLinesSpaceWithString:str space:2];
}

- (void)setLeafCount:(NSInteger)leafCount {
    _leafCount = leafCount;
    NSString *str = [NSString stringWithFormat:@"%ld\n绿叶",leafCount];
    [_leafLab setAttributedStringLinesSpaceWithString:str space:2];
}
@end
