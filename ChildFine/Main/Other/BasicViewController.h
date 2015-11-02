//
//  BasicViewController.h
//  ChildFine
//
//  Created by xian on 15/11/2.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasicViewController : UIViewController

- (void)defaultDataAndView;

- (void)addPromptAndQRCodeOnRightBarButtonItemWith:(UIViewController *)target action:(SEL)action;
@end
