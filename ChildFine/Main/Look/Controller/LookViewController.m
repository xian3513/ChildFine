//
//  LookViewController.m
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "LookViewController.h"
#import "RootHeaderView.h"
#import "TimeflowTableViewCell.h"
@interface LookViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    RootHeaderView *_headerView;
    UITableView *_tabView;
}

@property (nonatomic,strong) UIView *tabViewHeaderView;

@end

@implementation LookViewController

//重写父类初始化 方法/
- (void)defaultDataAndView {
    [super defaultDataAndView];
    [self addPromptAndQRCodeOnRightBarButtonItemWith:self action:@selector(buttonPress:)];
    [self addHeaderIconOrChildPlusImageOnLeftbarButtonItem:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"");
   [self.MyNavigationController cancelNavigationBarTranslucentAndBottomBlackLine];
    
    _headerView = [[RootHeaderView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 110)];
    [self.view addSubview:_headerView];
    _headerView.name = @"张";
    _headerView.age = 3;
    _headerView.childClass = @"xisT";
    //_headerView.flowerCount = 0;
    
    _tabView = [[UITableView alloc] initWithFrame:CGRectMake(0, _headerView.bottom, SCREEN_WIDTH, CONTENT_HEIGHT - _headerView.bottom) style:UITableViewStylePlain];
    _tabView.delegate = self;
    _tabView.dataSource = self;
    [_tabView registerNib:[UINib nibWithNibName:@"TimeflowTableViewCell" bundle:nil] forCellReuseIdentifier:@"lookCell"];
    _tabView.backgroundColor = [UIColor grayColor];
    _tabView.tableHeaderView = self.tabViewHeaderView;
    [self.view addSubview:_tabView];
    
}

#pragma -get
- (UIView *)tabViewHeaderView {
    if(!_tabViewHeaderView) {
        _tabViewHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _tabView.width, 30)];
        _tabViewHeaderView.backgroundColor = [UIColor clearColor];
    }
    return _tabViewHeaderView;
}
#pragma -tableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TimeflowTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"lookCell"];
    
    return cell;
}
- (void)buttonPress:(UIBarButtonItem *)item {
    if(item.tag == 0){ //QRCode
    
    }else {//消息
    
    }
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
