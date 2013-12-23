//
//  CoreDataDemoViewController.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 23/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "CoreDataDemoViewController.h"
#import "CoreDataStore.h"
#import "Employee.h"

@interface CoreDataDemoViewController ()

@end

@implementation CoreDataDemoViewController

-(NSString * )title{
    return  @"Core Data Demo";
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    
    //create a demo record
    CoreDataStore * store = [[CoreDataStore alloc]init];
    [store createEmployeeWithName:@"Aashish" position:@"iOS Developer"];
    [store saveChanges];
    
    //try to fetch record from employee - added above
    NSMutableArray *allEmployees = [store loadAllEmployees];
    NSLog(@"All Employees %@", allEmployees);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
