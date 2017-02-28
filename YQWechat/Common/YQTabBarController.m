//
//  YQTabBarController.m
//  YQWechat
//
//  Created by yiqiwang(王一棋) on 2017/2/27.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

#import "YQTabBarController.h"

@interface YQTabBarController ()

@end

@implementation YQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tabBar setBackgroundColor:[UIColor colorGrayBG]];
    [self.tabBar setTintColor:[UIColor colorGreenDefault]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
