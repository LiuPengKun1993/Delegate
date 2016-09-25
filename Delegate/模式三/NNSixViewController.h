//
//  NNSixViewController.h
//  Delegate
//
//  Created by 柳钟宁 on 16/9/25.
//  Copyright © 2016年 YMWM. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NNSixViewControllerDelegate <NSObject>

@optional

- (void)sendValue:(NSString *)value;

@end


@interface NNSixViewController : UIViewController

@property (nonatomic, assign) id<NNSixViewControllerDelegate> delegate;

@end
