// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {

    return [[UISceneConfiguration alloc]
            initWithName:@"Default Configuration"
            sessionRole:connectingSceneSession.role];
}

@end
