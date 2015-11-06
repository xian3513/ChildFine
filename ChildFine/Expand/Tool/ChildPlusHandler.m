//
//  ChildPlusHandler.m
//  ChildFine
//
//  Created by xian on 15/11/6.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "ChildPlusHandler.h"


@implementation ChildPlusHandler

+ (ChildPlusHandler *)share {
    
    static ChildPlusHandler *instance = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate,^{
        instance = [[self alloc]init];
        instance.DB = [DatabaseManager manager];
    });
    return instance;
}
@end
