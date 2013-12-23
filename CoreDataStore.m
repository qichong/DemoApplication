//
//  CoreDataStore.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 23/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "CoreDataStore.h"
#import <CoreData/CoreData.h>


#define ENTITY_EMPLOYEE @"Employee"

@implementation CoreDataStore




-(NSString * )coreDataPath{

    NSArray * documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    NSString * documentDirectory = [documentDirectories objectAtIndex:0];
    return [documentDirectory stringByAppendingString:@"store.data"];
}

-(id)init{
    self = [super init];
    if (self ) {
        model = [NSManagedObjectModel mergedModelFromBundles:nil];
        NSPersistentStoreCoordinator *psc = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:model];
        
        NSString * coreDataPath = [self coreDataPath];
        NSURL * coreDataPathURL = [NSURL fileURLWithPath:coreDataPath];
        NSError * error = nil;
        NSPersistentStore  *pStore  = [psc addPersistentStoreWithType:NSSQLiteStoreType
                                         configuration:nil
                                                   URL:coreDataPathURL
                                               options:nil
                                                 error:&error];
        if (!pStore) {
            NSLog(@"Failed to load persistence store");
        }
        context = [[NSManagedObjectContext alloc]init];
        [context setPersistentStoreCoordinator:psc];
        [context setUndoManager:nil];
    }
    
    return self;
    
}


-(BOOL)saveChanges{
    NSError * error = nil;
    BOOL success = [context save:&error];
    if (!success) NSLog(@"Failed to save changes");
    return  success;
}


-(NSMutableArray * )loadAllEmployees
{
    NSFetchRequest * request = [[NSFetchRequest alloc]init];
    NSEntityDescription * entity = [NSEntityDescription entityForName:ENTITY_EMPLOYEE inManagedObjectContext:context];
    [request setEntity:entity];
    NSError * error = nil;
    NSArray * result = [context executeFetchRequest:request error:&error];
    if (!result) {
        NSLog(@"failed to load data from store");
    }
    return  [[NSMutableArray alloc]initWithArray:result];
}


-(Employee * )createEmployeeWithName:(NSString * )name position:(NSString * )position
{
    Employee * newEmployee = [NSEntityDescription insertNewObjectForEntityForName:ENTITY_EMPLOYEE inManagedObjectContext:context];
    [newEmployee setName:name];
    [newEmployee setPosition:position];
    return newEmployee;
}

@end
