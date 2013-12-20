//
//  CGDemoViewController.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "CGDemoViewController.h"
#import "CGView.h"
#import "CustomImage.h"

@interface CGDemoViewController ()

@end

@implementation CGDemoViewController


-(NSString * )title{
    return @"CG Demo";
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
    
    CGRect viewFrame =  self.view.bounds;
    CGView * customView = [[CGView alloc]initWithFrame:viewFrame];
    [self.view addSubview:customView];
    

    CustomImage * customImage = [[CustomImage alloc]initWithFrame:CGRectMake(100, 370, 100, 100)];
    [self.view addSubview:customImage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
