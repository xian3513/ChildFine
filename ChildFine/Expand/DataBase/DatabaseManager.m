//
//  DatabaseManager.m
//  ChildFine
//
//  Created by xian on 15/11/6.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "DatabaseManager.h"
#import "FMDB.h"
@interface DatabaseManager() {
    FMDatabase *db;
    FMDatabaseQueue * _queue;
}

@property (nonatomic,strong)FMDatabaseQueue * queue;
@end

@implementation DatabaseManager

+ (DatabaseManager *)manager {
    
   return [[self alloc]init];
}

+ (DatabaseManager *)shareDatabaseQueue {
    static DatabaseManager *manager = nil;
    static dispatch_once_t predicate;
    dispatch_once(&predicate,^{
        manager = [[self alloc]init];
        //默认路径
        manager.queue = [FMDatabaseQueue databaseQueueWithPath:@"default.sqlite"];
    });
    return manager;
}

- (void)openDatabaseWithPath:(NSString *)path {
    //1.建立数据库只需要如下一行即可 , 当该文件不存在时，fmdb 会自己创建一个。
    //如果你传入的参数是空串：@“” ，则 fmdb 会在临时文件目录下创建这个数据库，
    //如果你传入的参数是 NULL，则它会建立一个在内存中的数据库
    db = [FMDatabase databaseWithPath:[self documentPathWithName:path]];
    _queue = [FMDatabaseQueue databaseQueueWithPath:path];
}


//操作数据库
- (BOOL)createTableWithSQL:(NSString *)sql saveFileName:(NSString *)name {
    
    BOOL res = NO;
    if ([db open]) {
        res = [db executeUpdate:sql];
        [db close];
        if (!res) {
            NSLog(@"error when creating db table");
        } else {
            NSLog(@"success to creating db table");
        }
    }
    
    return res;
}

- (BOOL)insertWithSQL:(NSString *)sql {
    BOOL res = NO;
    if ([db open]) {
    
        BOOL res = [db executeUpdate:sql];
        
        if (!res) {
            NSLog(@"error when insert db table");
        } else {
            NSLog(@"success to insert db table");
        }
        [db close];
    }

    return res;
}

- (BOOL)updateWithSQL:(NSString *)sql {
    BOOL res = NO;
    
    if ([db open]) {
        BOOL res = [db executeUpdate:sql];
        if (!res) {
            NSLog(@"error when update db table");
        } else {
            NSLog(@"success to update db table");
        }
        [db close];
        
    }
    
    return res;
}

- (BOOL)deleteWithSQL:(NSString *)sql {
    BOOL res = NO;
    
    if ([db open]) {
    
        BOOL res = [db executeUpdate:sql];
        if (!res) {
            NSLog(@"error when delete db table");
        } else {
            NSLog(@"success to delete db table");
        }
        [db close];
        
    }
    return res;
}

- (void)selectWithSQL:(NSString *)sql {

    if ([db open]) {
        FMResultSet * rs = [db executeQuery:sql];
        while ([rs next]) {
            
//            int Id = [rs intForColumn:ID];
//            NSString * name = [rs stringForColumn:NAME];
//            NSString * age = [rs stringForColumn:AGE];
//            NSString * address = [rs stringForColumn:ADDRESS];
//            NSLog(@"id = %d, name = %@, age = %@  address = %@", Id, name, age, address);
        }
        [db close];
    }

}

- (NSString *)documentPathWithName:(NSString *)fileName {
    //@"user.sqlite"
    NSString* docsdir = [NSSearchPathForDirectoriesInDomains( NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    return [docsdir stringByAppendingPathComponent:fileName];
}
@end
