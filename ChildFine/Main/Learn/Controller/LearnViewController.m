//
//  LearnViewController.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "LearnViewController.h"
#import "RootHeaderView.h"
#import "UILabel+Type.h"

@interface LearnViewController () {
    
    RootHeaderView *_headerView;
    UIView *_showView;
}

@end

@implementation LearnViewController

- (void)defaultDataAndView {
    [super defaultDataAndView];
    [self addPromptAndQRCodeOnRightBarButtonItemWith:self action:@selector(buttonPress:)];
    [self addHeaderIconOrChildPlusImageOnLeftbarButtonItem:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.MyNavigationController cancelNavigationBarTranslucentAndBottomBlackLine];
    
    _headerView = [[RootHeaderView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 120) isLook:NO];
    [self.view addSubview:_headerView];
    _headerView.name = @"张";
    _headerView.age = 3;
    _headerView.childClass = @"xisT";
    
    [self addShowView];
}

- (void)addShowView {
    _showView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 100)];
    _showView.center = CGPointMake(SCREEN_WIDTH/2, SCREEN_HEIGHT - _headerView.bottom - 64 -TABBAR_HEIGHT);
    [self.view addSubview:_showView];
    UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, _showView.width, _showView.height/2)];
    lab.textAlignment = NSTextAlignmentCenter;
    [lab familyLableSmallfontAndGrayColor];
    lab.font = [UIFont systemFontOfSize:13];
    lab.text = @"幼儿园还未开通课程，请先联系老师开通";
    [_showView addSubview:lab];
    
    UIButton *courseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    courseButton.frame = CGRectMake(_showView.width/16*3, _showView.height/2, SCREEN_WIDTH/8*5, 38);
    [courseButton setTitle:@"立即开通" forState:UIControlStateNormal];
    courseButton.backgroundColor = RGBA(171, 171, 171, 1);
    courseButton.layer.cornerRadius = courseButton.height/2;
    [_showView addSubview:courseButton];
 
}

- (void)buttonPress:(UIBarButtonItem *)item {

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
