//
//  BKIndicatorView.h
//  NetVideoPlatform
//
//  Created by zjn on 2020/11/8.
//  Copyright © 2020 BlackKnife. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BKIndicatorView : UIActivityIndicatorView
/// 获取单例对象
+ (instancetype)share;

/// [显示][等待提示视图]
/// @param superView 显示所在父视图
- (void)startInSuperView:(UIView*)superView;
/// [停止][等待提示视图]
- (void)stop;
@end

NS_ASSUME_NONNULL_END
