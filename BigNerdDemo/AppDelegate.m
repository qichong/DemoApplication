//
//  AppDelegate.m
//  BigNerdDemo
//
//  Created by Tanmay Khandelwal on 17/12/13.
//  Copyright (c) 2013 Aashish Dhawan. All rights reserved.
//

#import "AppDelegate.h"
#import "AnnotationDemoViewController.h"
#import "CGDemoViewController.h"
#import "AutoresizingMaskViewController.h"
#import "FixedLastCellViewController.h"
#import "TableDataStore.h"
#import "CoreDataDemoViewController.h"
#import "MenuDemoViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{   
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    //AnnotationDemoViewController * demoController = [[AnnotationDemoViewController alloc]initWithNibName:@"AnnotationDemoViewController" bundle:nil];
    
    //CGDemoViewController * demoController = [[CGDemoViewController alloc]init];
    //AutoresizingMaskViewController *demoController = [[AutoresizingMaskViewController alloc]init];

    
    //FixedLastCellViewController * demoController = [[FixedLastCellViewController alloc]init];
    
    
    
    //CoreDataDemoViewController * demoController = [[CoreDataDemoViewController alloc]init];
    
    MenuDemoViewController * demoController = [[MenuDemoViewController alloc]init];
    UINavigationController * navigationContoller = [[UINavigationController alloc]initWithRootViewController:demoController];
    self.window.rootViewController = navigationContoller;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    //save data source in path
    
    BOOL sucess  = [[TableDataStore sharedIndstance] saveChanges];
    if (sucess) {
        NSLog(@"Changes saved");
    }else{
        NSLog(@"failed to save change");
    }

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
