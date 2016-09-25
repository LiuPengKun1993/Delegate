//
//  NNFirstViewController.m
//  Delegate
//
//  Created by iOS on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNFirstViewController.h"
#import "NNSecondViewController.h"

@interface NNFirstViewController ()<NNSecondViewControllerDelegate>

@end

@implementation NNFirstViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NNSecondViewController *secondVC = segue.destinationViewController;
    [secondVC setDelegate:self];
    
}
- (void)sendValue:(NSString *)value {

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:value message:value preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDestructive handler:nil];

    [alert addAction:action1];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
