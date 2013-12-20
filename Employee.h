//
//  Employee.h
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject<NSCoding>


@property(nonatomic, strong)NSString * name;
@property(nonatomic, strong)NSString * position;

@end
