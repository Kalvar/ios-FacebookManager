//
//  AppDelegate.h
//  FacebookSample
//
//  Created by Kalvar on 2014/1/1.
//  Copyright (c) 2014年 Kalvar. All rights reserved.
//

#import <UIKit/UIKit.h>

//Remembers to add two below imports.
#import <FacebookSDK/FacebookSDK.h>
#import <Social/Social.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FBSession *session;

@end
