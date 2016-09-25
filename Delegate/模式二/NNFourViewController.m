//
//  NNFourViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNFourViewController.h"

@interface NNFourViewController ()


@end

@implementation NNFourViewController

/**
#pragma mark - Block方式
- (void)startTimer {
    
    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(timerRunBlock) userInfo:nil repeats:NO];
    
}

- (void)timerRunBlock {

    if (self.alertBlock) {
        self.alertBlock();
    }
}
*/



#pragma mark - 代理方式
- (void)startTimer {

    if ([self.delegate respondsToSelector:@selector(startAlert)]) {
        [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(timerRun) userInfo:nil repeats:NO];
    }
}
- (void)timerRun {
    [self.delegate startAlert];
}


@end
