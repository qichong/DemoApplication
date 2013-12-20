//
//  Employee.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "Employee.h"

@implementation Employee


-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.position forKey:@"position"];
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    if (self) {
        [self setName:[aDecoder decodeObjectForKey:@"name"]];
        [self setPosition:[aDecoder decodeObjectForKey:@"position"]];
    }
    return self;
    
}
@end
