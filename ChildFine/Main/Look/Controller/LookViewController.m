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
#import "HomeworkViewController.h"
#import "NoticeViewController.h"
#import "ComeOnViewController.h"
#import "RollcallViewController.h"

static NSString *lookCellIndentifer_One = @"lookCell_One";
static NSString *lookCellIndentifer_Two = @"lookCell_Two";

@interface LookViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    RootHeaderView *_headerView;
    UITableView *_tabView;
    NSArray *_nameArray;
    NSArray *_promptArray;
    NSArray *_contentArray;
    
    UIRefreshControl *_refreshControl;
}

@property (nonatomic,strong) UIView *tabViewHeaderView;

@end

@implementation LookViewController

//重写父类初始化 方法/
- (void)defaultDataAndView {
    [super defaultDataAndView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //初始化数据
    _nameArray = [[NSArray alloc]initWithObjects:@"时光流",@"家长作业",@"通知",@"宝贝加油",@"点名册", nil];
    _promptArray = [[NSArray alloc]initWithObjects:@"更多照片，快来珍藏吧",@"",@"",@"点击查看",@"点击查看", nil];
    _contentArray = [[NSArray alloc]initWithObjects:@"",@"这里会收到老师发来的作业，\n和孩子一起互动完成吧。",@"",@"张\n家庭表现：优秀，得到小绿叶1枚",@"关注宝宝出勤情况", nil];
    [self.MyNavigationController cancelNavigationBarTranslucentAndBottomBlackLine];
    [self.MyNavigationController addHeaderIconOrChildPlusImageOnLeftbarButtonItem:YES];
    [self.MyNavigationController addPromptAndQRCodeOnRightBarButtonItemWith:nil action:nil];
    //假数据
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
    [_tabView registerNib:[UINib nibWithNibName:@"TimeflowTableViewCell" bundle:nil] forCellReuseIdentifier:lookCellIndentifer_One];
    [_tabView registerNib:[UINib nibWithNibName:@"LookTableViewCell" bundle:nil] forCellReuseIdentifier:lookCellIndentifer_Two];
    _tabView.backgroundColor = RGBA(235, 235, 235, 1);
    _tabView.tableHeaderView = self.tabViewHeaderView;
    [self.view addSubview:_tabView];
    
    //下拉刷新
   _refreshControl = [[UIRefreshControl alloc] init];
    _refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    _refreshControl.tintColor = [UIColor grayColor];
    [_refreshControl addTarget:self action:@selector(refreshAction) forControlEvents:UIControlEventValueChanged];
    [_tabView addSubview:_refreshControl];
    
}
- (void)refreshAction{
    _refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"更新数据..."];
    [self performSelector:@selector(refreshFinish) withObject:nil afterDelay:2];
    [_refreshControl endRefreshing];
    
}
- (void)refreshFinish{
    _refreshControl.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
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
       TimeflowTableViewCell *one = [tableView dequeueReusableCellWithIdentifier:lookCellIndentifer_One];
        
        cell = one;
    } else {
        
        LookTableViewCell *two = [tableView dequeueReusableCellWithIdentifier:lookCellIndentifer_Two];
        two.blackLineView.hidden = NO;
        two.downLab.hidden = NO;
        
        if(indexPath.row == 1) {//家长作业
            two.contentLab.textAlignment = NSTextAlignmentCenter;
            two.contentLab.numberOfLines = 2;
            two.contentLab.font = [UIFont systemFontOfSize:12];
            two.contentLab.text = [_contentArray objectAtIndex:indexPath.row];
        }
        else if (indexPath.row == 3){//宝贝加油
            two.contentLab.textAlignment = NSTextAlignmentLeft;
            two.contentLab.numberOfLines = 2;
            two.contentLab.text = [_contentArray objectAtIndex:indexPath.row];
        }
        else if (indexPath.row == 4){//点名册
            two.contentLab.textAlignment = NSTextAlignmentLeft;
            two.contentLab.numberOfLines = 2;
            two.contentLab.text = [_contentArray objectAtIndex:indexPath.row];
        }
        cell = two;
    }

    cell.name = [_nameArray objectAtIndex:indexPath.row];
    cell.prompt = [_promptArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *viewController = nil;
    self.hidesBottomBarWhenPushed = YES;
    switch (indexPath.row) {
        case 0:{
            TimeflowViewController *controller = [[TimeflowViewController alloc]init];
            viewController = controller;
         break;
        }
        case 1:{
            HomeworkViewController *controller = [[HomeworkViewController alloc]init];
            viewController = controller;
            break;
        }
        case 2:{
            NoticeViewController *controller = [[NoticeViewController alloc]init];
            viewController = controller;
            break;
        }
        case 3:{
            ComeOnViewController *controller = [[ComeOnViewController alloc]init];
            viewController = controller;
            break;
        }
        case 4:{
            RollcallViewController *controller = [[RollcallViewController alloc]init];
            viewController = controller;
            break;
        }
    }
    [self.navigationController pushViewController:viewController animated:YES];
    self.hidesBottomBarWhenPushed = NO;
    
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
