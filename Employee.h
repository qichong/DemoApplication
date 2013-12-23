//
//  Employee.h
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 23/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Employee : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * position;

@end
