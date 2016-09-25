//
//  NNSecondViewController.h
//  Delegate
//
//  Created by 柳钟宁 on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  设置代理
 */

@protocol NNSecondViewControllerDelegate <NSObject>

@optional

- (void)sendValue:(NSString *)value;

@end

@interface NNSecondViewController : UIViewController

@property (nonatomic, assign) id<NNSecondViewControllerDelegate> delegate;

@end
