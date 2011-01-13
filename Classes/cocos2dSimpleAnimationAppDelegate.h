//
//  cocos2dSimpleAnimationAppDelegate.h
//  cocos2dSimpleAnimation
//
//  Created by Fernando Ribeiro on 1/13/11.
//  Copyright Gonow Tecnologia 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootViewController;

@interface cocos2dSimpleAnimationAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow			*window;
	RootViewController	*viewController;
}

@property (nonatomic, retain) UIWindow *window;

@end
