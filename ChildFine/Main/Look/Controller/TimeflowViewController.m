//
//  TimeflowViewController.m
//  ChildFine
//
//  Created by xian on 15/11/5.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "TimeflowViewController.h"

#import "FlowContentTableViewCell.h"
#import "FlowTwoTableViewCell.h"

#import "MJPhoto.h"
#import "MJPhotoBrowser.h"

static NSString *FlowOneCellIndentifer = @"flowContentCell";
static NSString *FlowTwoCellIndentifer = @"flowTwoCell";

@interface TimeflowViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *_tabView;
}

@end

@implementation TimeflowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.MyNavigationController addNavigationBackItem];
    self.title = @"时光流";
    
    _tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-TABBAR_HEIGHT) style:UITableViewStylePlain];
    _tabView.dataSource = self;
    _tabView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tabView registerNib:[UINib nibWithNibName:@"FlowContentTableViewCell" bundle:nil] forCellReuseIdentifier:FlowOneCellIndentifer];
    [_tabView registerNib:[UINib nibWithNibName:@"FlowTwoTableViewCell" bundle:nil] forCellReuseIdentifier:FlowTwoCellIndentifer];
    _tabView.delegate = self;
    _tabView.backgroundColor = RGBA(235, 235, 235, 1);
    [self.view addSubview:_tabView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0){
        return 220;
    }
    return 380;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.row == 0) {
        FlowTwoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FlowTwoCellIndentifer];
        cell.nameLab.text = @"xis";
        cell.classLab.text = @"xisT";
        cell.timeLab.text = @"刚刚";
        cell.contentLab.text = @"三张";
        cell.promptLab.text = @"等待家长珍藏";
        return cell;
    } else {
        FlowContentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:FlowOneCellIndentifer];
        
        cell.contentImageView.image = [UIImage imageNamed:@"2"];
        cell.nameLab.text = @"xis";
        cell.classLab.text = @"xisT";
        cell.timeLab.text = @"27分钟前";
        cell.contentLab.text = @"dequeueReusableCellWithIdentifier";
        cell.prompLab.text = @"等待家长珍藏";
        return cell;
    }
   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
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
