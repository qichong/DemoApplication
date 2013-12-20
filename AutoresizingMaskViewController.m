//
//  AutoresizingMaskViewController.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 20/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "AutoresizingMaskViewController.h"

@interface AutoresizingMaskViewController ()

@end

@implementation AutoresizingMaskViewController



-(NSString * )title{
    return @"Autoresizing Mask Demo";
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
    // Do any additional setup after loading the view from its nib.
    [self setUI];
}




-(void)setUI{

    // Add UIButton
    UIButton * leftButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [leftButton setTitle:@"Left Button" forState:UIControlStateNormal];
    leftButton.backgroundColor = [UIColor blueColor];
    
    leftButton.frame = CGRectMake(10, 100, 80, 40);
   [leftButton setAutoresizingMask: UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin];
    [self.view addSubview:leftButton];
                                                                      

    UIButton * rightButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [rightButton setTitle:@"Right Button" forState:UIControlStateNormal];
    rightButton.backgroundColor = [UIColor blueColor];
    
    rightButton.frame = CGRectMake(100, 100, 80, 40);
    [rightButton setAutoresizingMask: UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin ];
    [self.view addSubview:rightButton];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
