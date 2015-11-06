//
//  ChildPlusHandler.h
//  ChildFine
//
//  Created by xian on 15/11/6.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DatabaseManager.h"

@interface ChildPlusHandler : NSObject

@property (nonatomic,strong) DatabaseManager *DB;

+(ChildPlusHandler *)share;
@end
