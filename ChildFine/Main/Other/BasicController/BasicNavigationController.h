//
//  BasicViewController.h
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicNavigationController : UINavigationController

- (void)cancelNavigationBarTranslucentAndBottomBlackLine;

- (void)addNavigationBackItem;
@end

@interface UIViewController (MyNavigationController)

@property (readonly,nonatomic)BasicNavigationController *MyNavigationController;

@end