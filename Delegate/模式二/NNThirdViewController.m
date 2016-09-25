//
//  NNThirdViewController.m
//  Delegate
//
//  Created by iOS on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNThirdViewController.h"
#import "NNFourViewController.h"

@interface NNThirdViewController ()<NNFourViewControllerDelegate>

@end

@implementation NNThirdViewController

/**
 *  被注释掉的是Block方式
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
