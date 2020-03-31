//
//  UIViewController+JLHideNavigationBar.h
//  JLHideNavigationBarDemo
//
//  Created by 王俊岭 on 2020/3/31.
//  Copyright © 2020 王俊岭. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (JLHideNavigationBar)
///隐藏导航栏
@property (nonatomic, assign) BOOL jl_isHideNavBar;
@end

NS_ASSUME_NONNULL_END
