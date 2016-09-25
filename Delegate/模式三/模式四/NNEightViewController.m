//
//  NNEightViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNEightViewController.h"

@interface NNEightViewController ()

@end

@implementation NNEightViewController

- (void)startAnimate {
    
    [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(timerAction) userInfo:nil repeats:NO];
    
}

- (void)timerAction {
    if (self.updateAlertBlock) {
        self.updateAlertBlock();
    }
}

@end
