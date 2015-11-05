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
    self.view.backgroundColor = RGBA(235, 235, 235, 1);
    // Do any additional setup after loading the view.
}

- (void)addPromptAndQRCodeOnRightBarButtonItemWith:(UIViewController *)target action:(SEL)action {
    
    NSInteger width = 14;
    NSInteger height = 16;
    UIButton *QRbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [QRbutton setBackgroundImage:[UIImage imageNamed:@"scan"] forState:UIControlStateNormal];
    QRbutton.frame = CGRectMake(0, 0, 16, 16);
   
    UIButton *promptButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [promptButton setBackgroundImage:[UIImage imageNamed:@"bell"] forState:UIControlStateNormal];
    promptButton.frame = CGRectMake(20, 0, width, height);
    [QRbutton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [promptButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem* fixedSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil]; fixedSpace.width = 20;
    
     UIBarButtonItem *QRCodeItem = [[UIBarButtonItem alloc] initWithCustomView:QRbutton];
    UIBarButtonItem *promptItem = [[UIBarButtonItem alloc] initWithCustomView:promptButton];
    NSArray *buttonArray = [[NSArray alloc] initWithObjects:QRCodeItem,fixedSpace,promptItem, nil];
    self.navigationItem.rightBarButtonItems = buttonArray;
    
}

- (void)addHeaderIconOrChildPlusImageOnLeftbarButtonItem:(BOOL)isHeader {

    UIImageView *imageView = [[UIImageView alloc]init];
    if(isHeader){
        imageView.image = [UIImage imageNamed:@"default_head"];
        imageView.layer.cornerRadius = 18;
        imageView.layer.borderWidth = 2;
        imageView.layer.borderColor = RGBA(137, 232, 211, 1).CGColor;
        imageView.layer.masksToBounds = YES;
        imageView.frame = CGRectMake(0, 0, 38, 38);
    }else {
        UIImage *image = [UIImage imageNamed:@"childPlus"];
        imageView.image = image;
        imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
        //NSLog(@"size.width:%f",image.size.width);
    }
    
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
