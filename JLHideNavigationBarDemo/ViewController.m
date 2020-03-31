//
//  ViewController.m
//  JLHideNavigationBarDemo
//
//  Created by 王俊岭 on 2020/3/31.
//  Copyright © 2020 王俊岭. All rights reserved.
//

#import "ViewController.h"

#import "WithoutNavTestViewController.h"
#import "WithNavTestViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)test1:(id)sender {
    WithNavTestViewController *vc = [WithNavTestViewController new];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)test2:(id)sender {
    WithoutNavTestViewController *vc = [WithoutNavTestViewController new];
       [self.navigationController pushViewController:vc animated:YES];
}


@end
