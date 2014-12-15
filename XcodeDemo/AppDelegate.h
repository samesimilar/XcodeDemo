//
//  AppDelegate.h
//  XcodeDemo
//
//  Created by Mike Spears on 2014-12-14.
//  Copyright (c) 2014 University of Toronto. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UTVideos;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, readonly) UTVideos * videos;

@end

