//
//  NNSevenViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.

//  代理与 Block 配合使用

#import "NNSevenViewController.h"
#import "NNEightViewController.h"

@interface NNSevenViewController ()<NextViewControllerDelegate>

@end

@implementation NNSevenViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NNEightViewController *eightVC = [[NNEightViewController alloc] init];
    
    eightVC.updateAlertBlock = ^()
    {
        [self updeAlert];
    };
    
    [eightVC startAnimate];
}

- (void)updeAlert {
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello" message:@"NICE TO MEET YOU" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDestructive handler:nil];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:action1];
    [alert addAction:action2];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
