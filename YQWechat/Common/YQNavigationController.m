//
//  YQNavigationController.m
//  YQWechat
//
//  Created by yiqiwang(王一棋) on 2017/2/28.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

#import "YQNavigationController.h"

@interface YQNavigationController ()

@end

@implementation YQNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.barTintColor = [UIColor colorBlackForNavBar];
    self.navigationBar.tintColor = [UIColor whiteColor];
    [self.view setBackgroundColor:[UIColor colorGrayBG]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:
  @{NSForegroundColorAttributeName:[UIColor whiteColor],
    NSFontAttributeName:[UIFont fontNavBarTitle]}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
