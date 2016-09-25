//
//  NNEightViewController.h
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  代理协议
 */
@protocol NextViewControllerDelegate <NSObject>

@optional
- (void)updeAlert;
@end


@interface NNEightViewController : UIViewController

/**
 *  block
 */
typedef void (^UpdateAlertBlock)();

@property (nonatomic, copy) UpdateAlertBlock updateAlertBlock;


/**
 *  代理定义
 */
@property (nonatomic, weak) id<NextViewControllerDelegate> delegate;

- (void)startAnimate;

@end
