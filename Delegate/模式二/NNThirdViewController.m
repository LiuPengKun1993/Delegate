//
//  NNThirdViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.

//  代理简单使用（被注释的是 Block, 打开即可以用）

#import "NNThirdViewController.h"
#import "NNFourViewController.h"

@interface NNThirdViewController ()<NNFourViewControllerDelegate>

@end

@implementation NNThirdViewController

/**
 *  被注释掉的是 Block 方式
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NNFourViewController *fourVC = [[NNFourViewController alloc] init];
    /**
    fourVC.alertBlock = ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"时间到" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
        
        [alert addAction:action1];
        
        [self presentViewController:alert animated:YES completion:nil];
    };
     */
    
    fourVC.delegate = self;
    
    [fourVC startTimer];
}

- (void)startAlert {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"时间到" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
    
    [alert addAction:action1];
    
    [self presentViewController:alert animated:YES completion:nil];

}

@end
