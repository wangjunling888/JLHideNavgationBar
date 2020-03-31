//
//  UIViewController+JLHideNavigationBar.m
//  JLHideNavigationBarDemo
//
//  Created by 王俊岭 on 2020/3/31.
//  Copyright © 2020 王俊岭. All rights reserved.
//

#import <objc/runtime.h>

#import "UIViewController+JLHideNavigationBar.h"

@implementation UIViewController (JLHideNavigationBar)


+ (void)load {
    //获取UIViewController的实例方法 (viewWillAppear:)
    Method originalM = class_getInstanceMethod(self, @selector(viewWillAppear:));
    //获取自己重写的方法
    Method swizzledM = class_getInstanceMethod(self, @selector(jl_viewWillAppear:));
    //交换执行方法
    method_exchangeImplementations(originalM, swizzledM);

}



- (void)jl_viewWillAppear:(BOOL)animated {
    ///先调用原始方法
    [self jl_viewWillAppear:animated];

    ///实现自己需要的内容
    [self.navigationController setNavigationBarHidden:self.jl_isHideNavBar animated:animated];


}




///获取关联对象值
- (BOOL)jl_isHideNavBar {
    return [objc_getAssociatedObject(self, _cmd) boolValue];
}
///设置关联对象值
- (void)setJl_isHideNavBar:(BOOL)jl_isHideNavBar {
    objc_setAssociatedObject(self, @selector(jl_isHideNavBar), @(jl_isHideNavBar), OBJC_ASSOCIATION_RETAIN);
}

    
@end
