//
//  YQTableViewController.m
//  YQWechat
//
//  Created by yiqiwang(王一棋) on 2017/2/28.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

#import "YQTableViewController.h"

@interface YQTableViewController ()

@end

@implementation YQTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor colorGrayBG]];
    
    // 若不设置 tableview会显示无限cell
    [self.tableView setTableFooterView:[UIView new]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
