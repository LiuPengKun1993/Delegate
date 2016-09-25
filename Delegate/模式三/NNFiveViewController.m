//
//  NNFiveViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.

//  代理传值

#import "NNFiveViewController.h"
#import "NNSixViewController.h"

@interface NNFiveViewController ()<NNSixViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation NNFiveViewController

- (void)sendValue:(NSString *)value {

    self.textLabel.text = value;
}

- (IBAction)nextBtn {
    
    NNSixViewController *sixVC = [[UIStoryboard  storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"six"];
    
    [sixVC setDelegate:self];
    
    [sixVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    
    [self presentViewController:sixVC animated:YES completion:nil];
}

@end
