//
//  MeViewController.m
//  ChildFine
//
//  Created by xian on 15/11/3.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "MeViewController.h"

@interface MeViewController ()<UITableViewDataSource,UITableViewDelegate> {
    UITableView *_tabView;
    NSArray *_nameArray;
    NSInteger tabcellHeight;
}

@end

@implementation MeViewController

- (void)defaultDataAndView {
    [super defaultDataAndView];
    [self addPromptAndQRCodeOnRightBarButtonItemWith:self action:@selector(buttonPress:)];
    [self addHeaderIconOrChildPlusImageOnLeftbarButtonItem:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    tabcellHeight = 40;
    self.automaticallyAdjustsScrollViewInsets = NO;
    _nameArray = [[NSArray alloc]initWithObjects:@"xis",@"",@"我的宝贝",@"我要缴费",@"",@"设置", nil];
    _tabView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, tabcellHeight*6) style:UITableViewStylePlain];
    _tabView.delegate = self;
    _tabView.dataSource = self;
    _tabView.scrollEnabled = NO;
    _tabView.backgroundColor = RGBA(235, 235, 235, 1);
    [self.view addSubview:_tabView];
    if ([_tabView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tabView setSeparatorInset:UIEdgeInsetsMake(0,0,0,0)];
    }
    
    if ([_tabView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tabView setLayoutMargins:UIEdgeInsetsMake(0,0,0,0)];
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 6;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return tabcellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
   
    
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
    
    if(indexPath.row != 1 && indexPath.row != 4){
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
    }else {
        cell.backgroundColor = [UIColor clearColor];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [_nameArray objectAtIndex:indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:12];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:{
            
            break;
        }
        case 2:{
            
            break;
        }
        case 3:{
            
            break;
        }
        case 5:{
            
            break;
        }
           
            
        
    }
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
