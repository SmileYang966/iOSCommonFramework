//
//  AppDelegate.m
//  iOS-项目框架搭建
//
//  Created by Evan Yang on 2021/2/18.
//

#import "AppDelegate.h"
#import "SCTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    SCTabBarController *tabBar = [[SCTabBarController alloc]init];
    self.window.rootViewController = tabBar;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
