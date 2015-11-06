//
//  BasicViewController.m
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicNavigationController.h"

@interface BasicNavigationController ()

@end

@implementation BasicNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"themeBackground"] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.titleTextAttributes = @{UITextAttributeTextColor: [UIColor whiteColor]};
}

- (void)addNavigationBackItem {
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setBackgroundImage:[UIImage imageNamed:@"nav_back"] forState:UIControlStateNormal];
    
    backBtn.frame = CGRectMake(0, 0, 10, 18);
    [backBtn addTarget:self action:@selector(popBack:) forControlEvents:UIControlEventTouchUpInside];
    
        UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        self.topViewController.navigationItem.leftBarButtonItem = item;
}

- (void)popBack:(UIBarButtonItem *)item {
    [self popViewControllerAnimated:YES];
}

- (void)cancelNavigationBarTranslucentAndBottomBlackLine {
    //去掉nav默认的透明效果 这个属性会导致代码编写的view的y值 差64
    self.navigationBar.translucent = NO;
    //修改navBar底部的黑线
    if ([self.navigationBar respondsToSelector:@selector( setBackgroundImage:forBarMetrics:)]){
        NSArray *list=self.navigationBar.subviews;
        for (id obj in list) {
            if ([obj isKindOfClass:[UIImageView class]]) {
                UIImageView *imageView=(UIImageView *)obj;
                NSArray *list2=imageView.subviews;
                for (id obj2 in list2) {
                    if ([obj2 isKindOfClass:[UIImageView class]]) {
                        UIImageView *imageView2=(UIImageView *)obj2;
                        imageView2.hidden=YES;
                    }
                }
            }
        }
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
  
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

@implementation UIViewController (MyNavigationController)

-(BasicNavigationController *)MyNavigationController
{
    if ([self.navigationController isMemberOfClass:[BasicNavigationController class]]) {
        return (BasicNavigationController*)self.navigationController;
    }
    return nil;
}
@end
