//
//  NNSecondViewController.m
//  Delegate
//
//  Created by iOS on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNSecondViewController.h"

@interface NNSecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NNSecondViewController
- (void)viewWillDisappear:(BOOL)animated {

    if ([self.delegate respondsToSelector:@selector(sendValue:)]) {
        [self.delegate sendValue:_textField.text]; //传值
    }
}


@end
