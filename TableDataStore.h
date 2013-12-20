//
//  TabeDataStore.h
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableDataStore : NSObject


+(id)sharedIndstance;


-(NSMutableArray * )allRecords;
-(NSString * )itemArchivePath;
-(BOOL) saveChanges;

@end
