//
//  AppDelegate.m
//  BPQQLoginItem
//
//  Created by LiHaozhen on 15/6/16.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "AppDelegate.h"
#import "TencentApiHandler.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return [[TencentApiHandler defaultHandler] handleURL:url];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [[TencentApiHandler defaultHandler] handleURL:url];
}

@end
