//
//  YQRootViewController.m
//  YQWechat
//
//  Created by yiqiwang(王一棋) on 2017/2/27.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

#import "YQRootViewController.h"
#import "YQConversationViewController.h"
#import "YQContactViewController.h"
#import "YQDiscoverViewController.h"
#import "YQMeViewController.h"

@interface YQRootViewController ()
@property (nonatomic, strong) NSArray *childVCArray;
@property (nonatomic, strong) YQConversationViewController *conversationVC;
@property (nonatomic, strong) YQContactViewController *contactVC;
@property (nonatomic, strong) YQDiscoverViewController *discoverVC;
@property (nonatomic, strong) YQMeViewController *meVC;
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
        YQNavigationController *vc2 = [[YQNavigationController alloc] initWithRootViewController:self.contactVC];
        YQNavigationController *vc3 = [[YQNavigationController alloc] initWithRootViewController:self.discoverVC];
        YQNavigationController *vc4 = [[YQNavigationController alloc] initWithRootViewController:self.meVC];

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

- (YQContactViewController *)contactVC {
    if (!_contactVC) {
        _contactVC = [[YQContactViewController alloc] init];
        _contactVC.tabBarItem.title = @"通讯录";
        _contactVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_contacts"];
        _contactVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_contactsHL"];
    }
    return _contactVC;
}

- (YQDiscoverViewController *)discoverVC {
    if (!_discoverVC) {
        _discoverVC = [[YQDiscoverViewController alloc] init];
        _discoverVC.tabBarItem.title = @"发现";
        _discoverVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
        _discoverVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_discoverHL"];
    }
    return _discoverVC;
}

- (YQMeViewController *)meVC {
    if (!_meVC) {
        _meVC = [[YQMeViewController alloc] init];
        _meVC.tabBarItem.title = @"我";
        _meVC.tabBarItem.image = [UIImage imageNamed:@"tabbar_me"];
        _meVC.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_meHL"];
    }
    return _meVC;
}

@end
