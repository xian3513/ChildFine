//
//  RollcallViewController.m
//  ChildFine
//
//  Created by xian on 15/11/10.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "RollcallViewController.h"

@interface RollcallViewController ()

@end

@implementation RollcallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"点名册";
    [self.MyNavigationController addNavigationBackItem];
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
