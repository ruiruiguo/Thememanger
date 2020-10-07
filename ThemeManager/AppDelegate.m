//
//  AppDelegate.m
//  ThemeManager
//
//  Created by 郭瑞 on 2020/10/7.
//  Copyright © 2020 rui. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    RootViewController *vc = [[RootViewController alloc] init];
    self.window.rootViewController = vc;
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window makeKeyAndVisible];
    
    
    
    
    return YES;
}





@end
