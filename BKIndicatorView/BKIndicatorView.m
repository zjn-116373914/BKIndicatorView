//
//  BKIndicatorView.m
//  NetVideoPlatform
//
//  Created by zjn on 2020/11/8.
//  Copyright © 2020 BlackKnife. All rights reserved.
//

#import "BKIndicatorView.h"
@interface BKIndicatorView ()
/// 当前所在父视图
@property (nonatomic, strong) UIView *curSuperView;
@end
@implementation BKIndicatorView
/// [显示][等待提示视图]
/// @param superView 显示所在父视图
- (void)startInSuperView:(UIView*)superView{
    superView.userInteractionEnabled = NO;
    [superView addSubview:self];
    [self startAnimating];
    self.curSuperView = superView;
}

/// [停止][等待提示视图]
- (void)stop{
    [self stopAnimating];
    self.curSuperView.userInteractionEnabled = YES;
    [self removeFromSuperview];
    self.curSuperView = nil;
}

#pragma mark - ================== 初始化单例 start ================
/// 获取单例对象
+ (instancetype)share{
    static BKIndicatorView *singleton = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
                      singleton = [[BKIndicatorView alloc] init];
                  });
    return singleton;
}
- (instancetype)init{
    self = [super init];
    if (self) {
        self.activityIndicatorViewStyle = UIActivityIndicatorViewStyleLarge;
        self.frame = CGRectMake(0, 0, KScreenWidth, KScreenHeight);
        self.backgroundColor = [UIColor lightGrayColor];
        self.alpha = 0.5;
    }
    return self;
}
#pragma mark ================== 初始化单例 end ==================
@end
