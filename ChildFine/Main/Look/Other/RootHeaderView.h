//
//  RootHeaderView.h
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicView.h"

@interface RootHeaderView : BasicView

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *childClass;
@property (nonatomic) NSInteger sex;  //0代表男  1代表女
@property (nonatomic) NSInteger *age;
@property (nonatomic) NSInteger onLineDays;

@property (nonatomic) NSInteger leafCount;
@property (nonatomic) NSInteger flowerCount;
@property (nonatomic) NSInteger collectionCount;

@end
