//
//  NNSixViewController.m
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import "NNSixViewController.h"

@interface NNSixViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation NNSixViewController

- (IBAction)lastBtn {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillDisappear:(BOOL)animated {

    if ([self.delegate respondsToSelector:@selector(sendValue:)]) {
        [self.delegate sendValue:_textField.text];
    }
    
}

@end
