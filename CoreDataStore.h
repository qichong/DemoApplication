//
//  CoreDataStore.h
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 23/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"


@interface CoreDataStore : NSObject{
    
    NSManagedObjectContext * context;
    NSManagedObjectModel * model;
}


-(NSString * )coreDataPath;
-(BOOL)saveChanges;
-(NSMutableArray * )loadAllEmployees;
-(Employee * )createEmployeeWithName:(NSString * )name position:(NSString * )position;




@end
