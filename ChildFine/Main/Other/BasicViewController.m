//
//  BasicViewController.m
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "BasicViewController.h"

@interface BasicViewController ()

@end

@implementation BasicViewController

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if(self = [super initWithCoder:aDecoder]){
        [self defaultDataAndView];
    }
    return self;
}

- (instancetype)init {
    if(self = [super init]){
        [self defaultDataAndView];
    }
    return self;
}
- (void)defaultDataAndView {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)addPromptAndQRCodeOnRightBarButtonItemWith:(UIViewController *)target action:(SEL)action {
    
    UIBarButtonItem *QRCodeButton = [[UIBarButtonItem alloc]
                                     initWithImage:[UIImage imageNamed:@"tabbar_learn"] style:UIBarButtonItemStylePlain target:target action:action];
    UIBarButtonItem *promptButton = [[UIBarButtonItem alloc]
                                     initWithImage:[UIImage imageNamed:@"tabbar_learn"] style:UIBarButtonItemStylePlain target:target action:action];
    NSArray *buttonArray = [[NSArray alloc] initWithObjects:QRCodeButton,promptButton, nil];
    self.navigationItem.rightBarButtonItems = buttonArray;
    
}

- (void)tabbarButtonPress:(UIBarButtonItem *)item {
    NSLog(@"%@",NSStringFromSelector(_cmd));
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
