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

- (void)addHeaderIconOrChildPlusImageOnLeftbarButtonItem:(BOOL)isHeader {
   
    NSString *imageName = @"";
    if(isHeader){
        imageName = @"default_head";
    }else {
        imageName = @"childPlus";
    }
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    imageView.layer.cornerRadius = 20;
    imageView.layer.borderWidth = 2;
    imageView.layer.borderColor = [UIColor greenColor].CGColor;
    imageView.layer.masksToBounds = YES;
    imageView.frame = CGRectMake(0, 0, 44, 40);
    UIBarButtonItem *iconImage = [[UIBarButtonItem alloc]initWithCustomView:imageView];
    self.navigationItem.leftBarButtonItem = iconImage;
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
