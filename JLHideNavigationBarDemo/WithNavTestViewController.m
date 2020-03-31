//
//  WithNavTestViewController.m
//  JLHideNavigationBarDemo
//
//  Created by 王俊岭 on 2020/3/20.
//  Copyright © 2020 王俊岭. All rights reserved.
//

#import "WithNavTestViewController.h"

#import "WithoutNavTestViewController.h"


@implementation WithNavTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    imageView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:imageView];

    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    btn.backgroundColor = [UIColor orangeColor];
    [btn addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 addTarget:self action:@selector(test1) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    [self.view addSubview:btn1];
 
}

- (void)test {
    WithoutNavTestViewController *vc = [[WithoutNavTestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)test1 {
    WithNavTestViewController *vc = [WithNavTestViewController new];
    [self.navigationController pushViewController:vc animated:true];
}


@end
