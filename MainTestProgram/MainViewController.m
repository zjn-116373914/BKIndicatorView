//
//  MainViewController.m
//  MainTestProgram
//
//  Created by zjn on 2017/8/29.
//  Copyright © 2017年 zjn. All rights reserved.
//

#import "MainViewController.h"
#import "BKIndicatorView.h"
@interface MainViewController ()
/// 背景视图
@property (nonatomic, strong) UIImageView *backgroundImgView;
@end
@implementation MainViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    [self initUserInterface];
}
#pragma mark - =========== 初始化控制器 start ===========
/// 初始化UI交互界面
- (void)initUserInterface{
    UIBarButtonItem *rightBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"开始" style:UIBarButtonItemStylePlain target:self action:@selector(mainBtnAction)];
    self.navigationItem.rightBarButtonItems = @[rightBarBtn];
}

///导航栏的[确认]按钮控件的点击事件
- (void)mainBtnAction{
    [[BKIndicatorView share] startInSuperView:self.view];
    int timeSec = 2;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeSec * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[BKIndicatorView share] stop];
    });
}
#pragma mark =========== 初始化控制器 end ===========
@end
