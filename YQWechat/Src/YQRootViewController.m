//
//  YQRootViewController.m
//  YQWechat
//
//  Created by yiqiwang(王一棋) on 2017/2/27.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

#import "YQRootViewController.h"
#import "YQConversationViewController.h"

@interface YQRootViewController ()
@property (nonatomic, strong) NSArray *childVCArray;
@property (nonatomic, strong) YQConversationViewController *conversationVC;
@end

@implementation YQRootViewController

static YQRootViewController *sharedInstance;
+ (YQRootViewController *)sharedInstance {
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[YQRootViewController alloc] init];
    });
    return sharedInstance;
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    // 初始化子控制器
    [self setViewControllers:self.childVCArray];
}

#pragma mark - getter & setter

- (NSArray *)childVCArray {
    if (!_childVCArray) {
        YQNavigationController *vc1 = [[YQNavigationController alloc] initWithRootViewController:self.conversationVC];
        UIViewController *vc2 = [[UIViewController alloc] init];
        vc2.tabBarItem.title = @"通讯录";
        UIViewController *vc3 = [[UIViewController alloc] init];
        vc3.tabBarItem.title = @"发现";
        UIViewController *vc4 = [[UIViewController alloc] init];
        vc4.tabBarItem.title = @"我";

        _childVCArray = @[vc1, vc2, vc3, vc4];
    }
    return _childVCArray;
}

- (YQConversationViewController *)conversationVC {
    if (!_conversationVC) {
        _conversationVC = [[YQConversationViewController alloc] init];
        _conversationVC.tabBarItem.title = @"消息";
        _conversationVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_mainframe"];
        _conversationVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_mainframeHL"];
    }
    return _conversationVC;
}

@end
