//
//  MenuDemoViewController.m
//  BigNerdDemo
//
//  Created by Aashish Dhawan on 23/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "MenuDemoViewController.h"

@interface MenuDemoViewController ()

@end

@implementation MenuDemoViewController


-(NSString * )title{
    return @"Menu Demo";
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
    
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showMenu:)];
    [self.view addGestureRecognizer:tapGesture];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)canBecomeFirstResponder{
    return YES;
}
-(void)showMenu:(UITapGestureRecognizer *)sender{
    
    UIMenuController * menu = [UIMenuController sharedMenuController];
    UIMenuItem * menuItem1 = [[UIMenuItem alloc]initWithTitle:@"Menu Title 1 " action:@selector(firstMenuItem:)];
    UIMenuItem * menuItem2 = [[UIMenuItem alloc]initWithTitle:@"Menu Title 2 " action:@selector(firstMenuItem:)];
    [menu setMenuItems:[NSArray arrayWithObjects:menuItem1, menuItem2, nil]];
    
    CGPoint point =  [sender locationInView:self.view];
    [menu setTargetRect:CGRectMake(point.x, point.y, 2, 2) inView:self.view];
    [menu setMenuVisible:YES animated:YES];
    [self.view setNeedsDisplay];
}

-(void)firstMenuItem:(id)sender{
    NSLog(@"Menu item clicked");
    }
@end
