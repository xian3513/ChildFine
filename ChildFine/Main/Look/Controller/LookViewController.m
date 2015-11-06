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
#import "LookTableViewCell.h"
#import "TimeflowViewController.h"

@interface LookViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    RootHeaderView *_headerView;
    UITableView *_tabView;
    NSArray *_nameArray;
    NSArray *_promptArray;
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
    _nameArray = [[NSArray alloc]initWithObjects:@"时光流",@"家长作业",@"通知",@"宝贝加油",@"点名册", nil];
    _promptArray = [[NSArray alloc]initWithObjects:@"更多照片，快来珍藏吧",@"",@"",@"点击查看",@"点击查看", nil];
   [self.MyNavigationController cancelNavigationBarTranslucentAndBottomBlackLine];
    
    _headerView = [[RootHeaderView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 120) isLook:YES];
    [self.view addSubview:_headerView];
    _headerView.name = @"张";
    _headerView.age = 3;
    _headerView.childClass = @"xisT";
    _headerView.flowerCount = 123;
    
    //tabView
    _tabView = [[UITableView alloc] initWithFrame:CGRectMake(0, _headerView.bottom, SCREEN_WIDTH, CONTENT_HEIGHT - _headerView.bottom) style:UITableViewStylePlain];
    _tabView.delegate = self;
    _tabView.dataSource = self;
    _tabView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tabView registerNib:[UINib nibWithNibName:@"TimeflowTableViewCell" bundle:nil] forCellReuseIdentifier:@"lookCell_One"];
    [_tabView registerNib:[UINib nibWithNibName:@"LookTableViewCell" bundle:nil] forCellReuseIdentifier:@"lookCell_Two"];
    _tabView.backgroundColor = RGBA(235, 235, 235, 1);
    _tabView.tableHeaderView = self.tabViewHeaderView;
    [self.view addSubview:_tabView];
    
}

#pragma -get
- (UIView *)tabViewHeaderView {
    if(!_tabViewHeaderView) {
        _tabViewHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _tabView.width, 15)];
        _tabViewHeaderView.backgroundColor = [UIColor clearColor];
    }
    return _tabViewHeaderView;
}
#pragma -tableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger height = 100;
    switch (indexPath.row) {
        case 0:{
            height = 233;
            break;
        }
        case 3:{
            height = 125;
            break;
        }
    }
    return height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BasicTableViewCell *cell = nil;
    if(indexPath.row == 0){
       TimeflowTableViewCell *one = [tableView dequeueReusableCellWithIdentifier:@"lookCell_One"];
        
        cell = one;
    } else {
        LookTableViewCell *two = [tableView dequeueReusableCellWithIdentifier:@"lookCell_Two"];
        two.blackLineView.hidden = NO;
        two.downLab.hidden = NO;
        cell = two;
    }
     [cell setContentViewAndLable];
    cell.name = [_nameArray objectAtIndex:indexPath.row];
    cell.prompt = [_promptArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewController = nil;
    switch (indexPath.row) {
        case 0:{
            TimeflowViewController *controller = [[TimeflowViewController alloc]init];
            viewController = controller;
         break;
        }
        case 1:{
            break;
        }
        case 2:{
            break;
        }
        case 3:{
            break;
        }
        case 4:{
            break;
        }
    }
    [self.navigationController pushViewController:viewController animated:YES];
    
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
