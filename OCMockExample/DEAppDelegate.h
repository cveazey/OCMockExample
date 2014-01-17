//
//  DEAppDelegate.h
//  OCMockExample
//
//  Created by cbv on 1/16/14.
//  Copyright (c) 2014 Double Encore, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DEObject;

@interface DEAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

- (NSString *)processObject:(DEObject *)object;


@end
