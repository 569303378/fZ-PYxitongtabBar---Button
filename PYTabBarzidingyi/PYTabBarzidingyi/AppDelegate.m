//
//  AppDelegate.m
//  PYTabBarzidingyi
//
//  Created by Apple on 16/8/24.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "JPNavigationController.h"
#import "TwoViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [sb instantiateInitialViewController];
//    vc.title = @"ViewController 关联 UIStoryboard";
    TwoViewController *twoVC = [TwoViewController new];

    
    JPNavigationController *nav1 = [[JPNavigationController alloc]initWithRootViewController:vc];
    //设置tabBar标题图片
//    nav1.tabBarItem.title = @"11";
    //选中之前的图片
    UIImage *image_1 = [[UIImage imageNamed:@"1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //选中之后的图片
    UIImage *image_2 = [[UIImage imageNamed:@"3"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    nav1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"两张图片" image:image_1 selectedImage:image_2];
    
    JPNavigationController *nav2 = [[JPNavigationController alloc]initWithRootViewController:twoVC];
    nav2.tabBarItem.title = @"第二页";
    nav2.tabBarItem.image = [[UIImage imageNamed:@"2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    //tabBar
    UITabBarController *tabBar = [[UITabBarController alloc]init];
    tabBar.viewControllers  = @[nav1, nav2];
    
    self.window.rootViewController = tabBar;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
