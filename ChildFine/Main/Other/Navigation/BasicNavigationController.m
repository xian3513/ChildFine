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
    [self addPromptAndQRCodeOnRightBarButtonItem];
}

- (void)addPromptAndQRCodeOnRightBarButtonItem {
    
        UIBarButtonItem *rightButton1 = [[UIBarButtonItem alloc]
                                         initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                         target:self
                                         action:@selector(aa)];
    [rightButton1 setTitle:@"hah"];
        UIBarButtonItem *rightButton2 = [[UIBarButtonItem alloc]
                                         initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
                                         target:self
                                         action:nil];
        NSArray *buttonArray = [[NSArray alloc] initWithObjects:rightButton1,rightButton2, nil];
        self.navigationItem.rightBarButtonItems = buttonArray;
    
}

- (void)aa{

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
