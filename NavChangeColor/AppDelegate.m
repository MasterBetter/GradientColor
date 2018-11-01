//
//  AppDelegate.m
//  NavChangeColor
//
//  Created by 吴腾飞 on 2018/10/23.
//  Copyright © 2018 Damon. All rights reserved.
//

#import "AppDelegate.h"
#import "UIImage+GradientColor.h"
#import "WRNavigationBar.h"
#import "BaseNavigationController.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    BaseNavigationController *firstNav = [[BaseNavigationController alloc] initWithRootViewController:[ViewController new]];
    
    UITabBarController *tabBarVC = [UITabBarController new];
    tabBarVC.viewControllers = @[firstNav];
   
    self.window.rootViewController = tabBarVC;
    [self setNavBarAppearence];
    
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)setNavBarAppearence
{
    
    CGSize size = CGSizeMake(376.0f, 83.0f);
    UIColor *topleftColor = [UIColor colorWithRed:148/255.0f green:127/255.0f blue:202/255.0f alpha:1.0f];
    UIColor *bottomrightColor = [UIColor colorWithRed:(141/255.0) green:(137/255.0) blue:(244/255.0) alpha:(1)];
    UIImage *bgImg = [UIImage gradientColorImageFromColors:@[topleftColor, bottomrightColor] gradientType:1 imgSize:size];
  
    // 设置导航栏默认的背景颜色
    [WRNavigationBar wr_setDefaultNavBarBarTintColor:[UIColor colorWithPatternImage:bgImg]];
    // 设置导航栏所有按钮的默认颜色
    [WRNavigationBar wr_setDefaultNavBarTintColor:[UIColor whiteColor]];
    // 设置导航栏标题默认颜色
    [WRNavigationBar wr_setDefaultNavBarTitleColor:[UIColor whiteColor]];
    // 统一设置状态栏样式
    [WRNavigationBar wr_setDefaultStatusBarStyle:UIStatusBarStyleLightContent];
    // 如果需要设置导航栏底部分割线隐藏，可以在这里统一设置
    [WRNavigationBar wr_setDefaultNavBarShadowImageHidden:YES];
}



@end
