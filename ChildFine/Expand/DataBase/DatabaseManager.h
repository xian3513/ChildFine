//
//  DatabaseManager.h
//  ChildFine
//
//  Created by xian on 15/11/6.
//  Copyright © 2015年 xian. All rights reserved.
//



                        // 目前是demo 方法 参数等，根据具体项目 修改

#import <Foundation/Foundation.h>


@interface DatabaseManager : NSObject

+ (DatabaseManager *)manager; 
+ (DatabaseManager *)shareDatabaseQueue;

- (void)openDatabaseWithPath:(NSString *)path;

- (BOOL)createTableWithSQL:(NSString *)sql saveFileName:(NSString *)name;

- (BOOL)insertWithSQL:(NSString *)sql;

- (BOOL)updateWithSQL:(NSString *)sql;

- (BOOL)deleteWithSQL:(NSString *)sql;

- (void)selectWithSQL:(NSString *)sql;

- (void)inDatabase:(void(^)(DatabaseManager *db))block;
- (void)inTransaction:(void(^)(DatabaseManager *db, BOOL *rollback))block;
@end
