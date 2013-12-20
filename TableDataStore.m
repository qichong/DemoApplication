//
//  TabeDataStore.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "TableDataStore.h"


@interface TableDataStore()
@property(nonatomic, strong) NSMutableArray * allRecords;
@end



@implementation TableDataStore

+(id)sharedIndstance{

    static TableDataStore * tableDataSource = nil;
    if (!tableDataSource) {
        tableDataSource =  [[self alloc]init];
    }
    return tableDataSource;
}


-(NSMutableArray * )allRecords{
    
    NSMutableArray  * allRecords;

    //check if saved in archive
    NSString * path = [self itemArchivePath];
    allRecords =  [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    if (!allRecords) {
        allRecords = [[NSMutableArray alloc]init];
        for (int i = 0; i< 100; i++) {
            [allRecords addObject:[NSString stringWithFormat:@"Item %d", i]];
        }
    }
    return allRecords;
}


-(NSString * )itemArchivePath{
    NSArray *  documentDorectories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString * documentDirectory = [documentDorectories objectAtIndex:0];
    return [documentDirectory stringByAppendingString:@"item.archive"];
}

-(BOOL) saveChanges{
    NSString * path = [self itemArchivePath];
    return [NSKeyedArchiver archiveRootObject:[self allRecords] toFile:path];
}

@end
