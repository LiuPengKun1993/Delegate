//
//  NNFourViewController.h
//  Delegate
//
//  Created by 柳钟宁 on 16/9/24.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  代理协议
 */
@protocol NNFourViewControllerDelegate <NSObject>
@optional
- (void)startAlert;
@end


/**
 *  Block方式
 */
typedef void(^delegateBlock)();

@interface NNFourViewController : UIViewController

@property (nonatomic, copy) delegateBlock alertBlock;



/**
 *  代理方法
 */
@property (nonatomic, assign) id<NNFourViewControllerDelegate> delegate;


- (void)startTimer;

@end
