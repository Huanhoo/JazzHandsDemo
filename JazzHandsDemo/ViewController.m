//
//  ViewController.m
//  JazzHandsDemo
//
//  Created by huhuan on 2016/12/6.
//  Copyright © 2016年 Huanhoo. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@property (nonatomic, strong) UIImageView *page1_title;
@property (nonatomic, strong) UIImageView *page1_smallIcon;
@property (nonatomic, strong) UIImageView *page1_circleBg;
@property (nonatomic, strong) UIImageView *page1_top;
@property (nonatomic, strong) UIImageView *page1_left;
@property (nonatomic, strong) UIImageView *page1_bottom;
@property (nonatomic, strong) UIImageView *page1_right;

@property (nonatomic, strong) UIImageView *page2_title;
@property (nonatomic, strong) UIImageView *page2_smallIcon;
@property (nonatomic, strong) UIImageView *page2_phone;
@property (nonatomic, strong) UIImageView *page2_tip1;
@property (nonatomic, strong) UIImageView *page2_tip2;
@property (nonatomic, strong) UIImageView *page2_tip3;
@property (nonatomic, strong) UIImageView *page2_tip4;
@property (nonatomic, strong) UIImageView *page2_tip5;

@property (nonatomic, strong) UIImageView *page3_title;
@property (nonatomic, strong) UIImageView *page3_smallIcon;
@property (nonatomic, strong) UIImageView *page3_content;

@property (nonatomic, strong) UIImageView *page4_title;
@property (nonatomic, strong) UIImageView *page4_smallIcon;
@property (nonatomic, strong) UIImageView *page4_content;
@property (nonatomic, strong) UIImageView *page4_dollor;
@property (nonatomic, strong) UIImageView *page4_rmb;

@property (nonatomic, strong) UIImageView *page5_title;
@property (nonatomic, strong) UIImageView *page5_circleBg;
@property (nonatomic, strong) UIButton    *page5_joinButton;

@end

@implementation ViewController

//屏幕size
#define SCREEN_SIZE [[UIScreen mainScreen] bounds].size

static const NSInteger kNumberOfPages = 5;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.animator = [IFTTTAnimator new];
    
    self.view.frame = CGRectMake(0., 0., SCREEN_SIZE.width, SCREEN_SIZE.height);
    [self.view layoutIfNeeded];
    
    [self configureViews];
    [self configureAnimations];
    
}

- (void)dissmissGuideViewController {
    
}

- (void)configureViews {
    
    //page1的视图
    self.page1_title = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_title"]];
    [self.contentView addSubview:self.page1_title];
    
    self.page1_smallIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_smallIcon"]];
    [self.contentView addSubview:self.page1_smallIcon];
    
    self.page1_circleBg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_circleBg"]];
    [self.contentView addSubview:self.page1_circleBg];
    
    self.page1_top = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_topPic"]];
    [self.contentView addSubview:self.page1_top];
    
    self.page1_left = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_leftPic"]];
    [self.contentView addSubview:self.page1_left];
    
    self.page1_right = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_rightPic"]];
    [self.contentView addSubview:self.page1_right];
    
    self.page1_bottom = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page1_bottomBg"]];
    [self.contentView addSubview:self.page1_bottom];
    
    //page2的视图
    self.page2_title = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_title"]];
    [self.contentView addSubview:self.page2_title];
    
    self.page2_smallIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_smallIcon"]];
    [self.contentView addSubview:self.page2_smallIcon];
    
    self.page2_phone = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_phone"]];
    [self.contentView addSubview:self.page2_phone];
    
    self.page2_tip1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_tip1"]];
    [self.contentView addSubview:self.page2_tip1];
    
    self.page2_tip2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_tip2"]];
    [self.contentView addSubview:self.page2_tip2];
    
    self.page2_tip3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_tip3"]];
    [self.contentView addSubview:self.page2_tip3];
    
    self.page2_tip4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_tip4"]];
    [self.contentView addSubview:self.page2_tip4];
    
    self.page2_tip5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page2_tip5"]];
    [self.contentView addSubview:self.page2_tip5];
    
    
    //page3的视图
    self.page3_title = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page3_title"]];
    [self.contentView addSubview:self.page3_title];
    
    self.page3_smallIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page3_smallIcon"]];
    [self.contentView addSubview:self.page3_smallIcon];
    
    self.page3_content = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page3_content"]];
    [self.contentView addSubview:self.page3_content];
    
    //page4的视图
    self.page4_dollor = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page4_dollor"]];
    [self.contentView addSubview:self.page4_dollor];
    
    self.page4_title = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page4_title"]];
    [self.contentView addSubview:self.page4_title];
    
    self.page4_smallIcon = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page4_smallIcon"]];
    [self.contentView addSubview:self.page4_smallIcon];
    
    self.page4_content = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page4_content"]];
    [self.contentView addSubview:self.page4_content];
    
    self.page4_rmb = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page4_rmb"]];
    [self.contentView addSubview:self.page4_rmb];
    
    //page5的视图
    self.page5_title = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page5_title"]];
    [self.contentView addSubview:self.page5_title];
    
    self.page5_circleBg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"page5_circleBg"]];
    [self.contentView addSubview:self.page5_circleBg];
    
    self.page5_joinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.page5_joinButton setImage:[UIImage imageNamed:@"page5_joinButton_normal"] forState:UIControlStateNormal];
    [self.page5_joinButton setImage:[UIImage imageNamed:@"page5_joinButton_highlight"] forState:UIControlStateHighlighted];
    [self.page5_joinButton addTarget:self action:@selector(dissmissGuideViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:self.page5_joinButton];
    
}

- (void)configureAnimations {
    
    [self configurePage1Animation];
    [self configurePage2Animation];
    [self configurePage3Animation];
    [self configurePage4Animation];
    [self configurePage5Animation];
    
    [self animateCurrentFrame];
    
}

- (void)configurePage1Animation {
    
    float titleImageY = SCREEN_SIZE.width>320 ? 30 : 20;
    float topImageY = SCREEN_SIZE.width>320 ? 180 : 150;
    float leftImageY = SCREEN_SIZE.width>320 ? 50 : 70;
    float bottomImageY = SCREEN_SIZE.width>320 ? -60 : (SCREEN_SIZE.height > 480 ? 0 : 40 );
    float rightImageY = leftImageY;
    
    //page1的动画
    //title动画
    [self keepView:self.page1_title onPages:@[@(0), @(-1)] atTimes:@[@(0), @(1)]];
    [self.page1_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(titleImageY);
        make.width.equalTo(@194);
        make.height.equalTo(@117);
    }];
    
    //小图标动画
    [self keepView:self.page1_smallIcon onPages:@[@(0), @(1)] atTimes:@[@(0), @(1)] withAttribute:IFTTTHorizontalPositionAttributeRight offset:-10];
    
    [self.page1_smallIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@31);
    }];
    
    NSLayoutConstraint *page1_smallIconVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page1_smallIcon
                                                                                         attribute:NSLayoutAttributeTop
                                                                                         relatedBy:NSLayoutRelationEqual
                                                                                            toItem:self.contentView
                                                                                         attribute:NSLayoutAttributeTop
                                                                                        multiplier:1.f constant:20.f];
    [self.contentView addConstraint:page1_smallIconVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page1_smallIconVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                           constraint:page1_smallIconVerticalConstraint
                                                                                                                            attribute:IFTTTLayoutAttributeHeight
                                                                                                                        referenceView:self.contentView constant:20];
    
    [page1_smallIconVerticalAnimation addKeyframeForTime:0 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page1_smallIconVerticalAnimation addKeyframeForTime:1 multiplier:-1.f];
    [self.animator addAnimation:page1_smallIconVerticalAnimation];
    
    //背景圆圈动画
    [self keepView:self.page1_circleBg onPages:@[@(0), @(1)] atTimes:@[@(0), @(1)]];
    [self.page1_circleBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(50);
        make.width.height.equalTo(@(SCREEN_SIZE.width));
    }];
    
    IFTTTAlphaAnimation *page1_circleBgAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page1_circleBg];
    [page1_circleBgAlphaAnimation addKeyframeForTime:0 alpha:1];
    [page1_circleBgAlphaAnimation addKeyframeForTime:1 alpha:0];
    [self.animator addAnimation:page1_circleBgAlphaAnimation];
    
    //top图动画
    [self keepView:self.page1_top onPages:@[@(0.05), @(1.05)] atTimes:@[@(0), @(1)] withAttribute:IFTTTHorizontalPositionAttributeCenterX];
    
    [self.page1_top mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.equalTo(@(129*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(254*(SCREEN_SIZE.width/375)));
        
    }];
    
    NSLayoutConstraint *page1_topVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page1_top
                                                                                   attribute:NSLayoutAttributeTop
                                                                                   relatedBy:NSLayoutRelationEqual
                                                                                      toItem:self.contentView
                                                                                   attribute:NSLayoutAttributeTop
                                                                                  multiplier:1.f constant:topImageY];
    [self.contentView addConstraint:page1_topVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page1_topVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                     constraint:page1_topVerticalConstraint
                                                                                                                      attribute:IFTTTLayoutAttributeHeight
                                                                                                                  referenceView:self.contentView constant:topImageY];
    
    [page1_topVerticalAnimation addKeyframeForTime:0 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page1_topVerticalAnimation addKeyframeForTime:1 multiplier:-1.f];
    [self.animator addAnimation:page1_topVerticalAnimation];
    
    IFTTTAlphaAnimation *page1_topAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page1_top];
    [page1_topAlphaAnimation addKeyframeForTime:0 alpha:1];
    [page1_topAlphaAnimation addKeyframeForTime:0.5 alpha:0];
    [self.animator addAnimation:page1_topAlphaAnimation];
    
    //left图动画
    [self keepView:self.page1_left onPages:@[@(0.05), @(-1)] atTimes:@[@(0), @(1)] withAttribute:IFTTTHorizontalPositionAttributeLeft];
    
    [self.page1_left mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(self.contentView).offset(leftImageY);
        make.width.equalTo(@(154*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(300*(SCREEN_SIZE.width/375)));
        
    }];
    
    IFTTTAlphaAnimation *page1_leftAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page1_left];
    [page1_leftAlphaAnimation addKeyframeForTime:0 alpha:1];
    [page1_leftAlphaAnimation addKeyframeForTime:0.5 alpha:0];
    [self.animator addAnimation:page1_leftAlphaAnimation];
    
    //right图动画
    [self keepView:self.page1_right onPages:@[@(-0.1), @(2)] atTimes:@[@(0), @(1)] withAttribute:IFTTTHorizontalPositionAttributeRight];
    
    [self.page1_right mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(self.contentView).offset(rightImageY);
        make.width.equalTo(@(144*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(254*(SCREEN_SIZE.width/375)));
        
    }];
    
    IFTTTAlphaAnimation *page1_rightAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page1_right];
    [page1_rightAlphaAnimation addKeyframeForTime:0 alpha:1];
    [page1_rightAlphaAnimation addKeyframeForTime:0.5 alpha:0];
    [self.animator addAnimation:page1_rightAlphaAnimation];
    
    //bottom图动画
    [self keepView:self.page1_bottom onPages:@[@(-0.09), @(0.9)] atTimes:@[@(0), @(1)] withAttribute:IFTTTHorizontalPositionAttributeCenterX];
    
    [self.page1_bottom mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.equalTo(@(149*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(299*(SCREEN_SIZE.width/375)));
        
    }];
    
    NSLayoutConstraint *page1_bottomVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page1_bottom
                                                                                      attribute:NSLayoutAttributeBottom
                                                                                      relatedBy:NSLayoutRelationEqual
                                                                                         toItem:self.contentView
                                                                                      attribute:NSLayoutAttributeBottom
                                                                                     multiplier:1.f constant:bottomImageY];
    [self.contentView addConstraint:page1_bottomVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page1_bottomVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                        constraint:page1_bottomVerticalConstraint
                                                                                                                         attribute:IFTTTLayoutAttributeHeight
                                                                                                                     referenceView:self.contentView constant:bottomImageY];
    
    [page1_bottomVerticalAnimation addKeyframeForTime:0 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page1_bottomVerticalAnimation addKeyframeForTime:1 multiplier:1.f];
    [self.animator addAnimation:page1_bottomVerticalAnimation];
    
    IFTTTAlphaAnimation *page1_bottomAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page1_bottom];
    [page1_bottomAlphaAnimation addKeyframeForTime:0 alpha:1];
    [page1_bottomAlphaAnimation addKeyframeForTime:0.5 alpha:0];
    [self.animator addAnimation:page1_bottomAlphaAnimation];
    
}

- (void)configurePage2Animation {
    
    float titleImageY = SCREEN_SIZE.width>320 ? 50 : (SCREEN_SIZE.height > 480 ? 40 : 20);
    float tip1ImageY = SCREEN_SIZE.width>320 ? 20 : 90;
    float tip2ImageY = SCREEN_SIZE.width>320 ? -80 : -10;
    float tip3ImageY = SCREEN_SIZE.width>320 ? 150 : 112;
    float tip4ImageY = SCREEN_SIZE.width>320 ? -65 : -25;
    float tip5ImageY = SCREEN_SIZE.width>320 ? 65 : 105;
    
    //page2的动画
    //title动画
    [self keepView:self.page2_title onPages:@[@(1), @(0)] atTimes:@[@(1), @(2)]];
    [self.page2_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(titleImageY);
        make.width.equalTo(@247);
        make.height.equalTo(@103);
    }];
    
    //小图标动画
    [self keepView:self.page2_smallIcon onPages:@[@(1), @(2)] atTimes:@[@(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeRight offset:-10];
    
    [self.page2_smallIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@31);
    }];
    
    NSLayoutConstraint *page2_smallIconVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page2_smallIcon
                                                                                         attribute:NSLayoutAttributeTop
                                                                                         relatedBy:NSLayoutRelationEqual
                                                                                            toItem:self.contentView
                                                                                         attribute:NSLayoutAttributeTop
                                                                                        multiplier:1.f constant:20.f];
    [self.contentView addConstraint:page2_smallIconVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page2_smallIconVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                           constraint:page2_smallIconVerticalConstraint
                                                                                                                            attribute:IFTTTLayoutAttributeHeight
                                                                                                                        referenceView:self.contentView constant:20];
    
    [page2_smallIconVerticalAnimation addKeyframeForTime:1 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page2_smallIconVerticalAnimation addKeyframeForTime:2 multiplier:-1.f];
    [self.animator addAnimation:page2_smallIconVerticalAnimation];
    
    //背景phone动画
    [self keepView:self.page2_phone onPages:@[@(0), @(1), @(2)] atTimes:@[@(0), @(1), @(2)]];
    
    [self.page2_phone mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(50);
        make.width.equalTo(@168);
        make.height.equalTo(@349);
    }];
    
    IFTTTAlphaAnimation *page2_phoneAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_phone];
    [page2_phoneAlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_phoneAlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_phoneAlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_phoneAlphaAnimation];
    
    IFTTTScaleAnimation *page2_phoneScaleAnimation = [IFTTTScaleAnimation animationWithView:self.page2_phone];
    [page2_phoneScaleAnimation addKeyframeForTime:0 scale:0.1];
    [page2_phoneScaleAnimation addKeyframeForTime:1 scale:1];
    [page2_phoneScaleAnimation addKeyframeForTime:2 scale:0.1];
    [self.animator addAnimation:page2_phoneScaleAnimation];
    
    //tip图标动画
    //tip1图标动画
    [self keepView:self.page2_tip1 onPages:@[@(0), @(1.16), @(2)] atTimes:@[@(0), @(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeLeft];
    
    [self.page2_tip1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(tip1ImageY);
        make.width.equalTo(@70);
        make.height.equalTo(@72);
    }];
    
    IFTTTAlphaAnimation *page2_tip1AlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_tip1];
    [page2_tip1AlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_tip1AlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_tip1AlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_tip1AlphaAnimation];
    
    //tip2图标动画
    [self keepView:self.page2_tip2 onPages:@[@(0), @(1.14), @(2)] atTimes:@[@(0), @(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeLeft];
    
    [self.page2_tip2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(tip2ImageY);
        make.width.equalTo(@109);
        make.height.equalTo(@105);
    }];
    
    IFTTTAlphaAnimation *page2_tip2AlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_tip2];
    [page2_tip2AlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_tip2AlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_tip2AlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_tip2AlphaAnimation];
    
    //tip4图标动画
    [self keepView:self.page2_tip4 onPages:@[@(0), @(0.86), @(2.1)] atTimes:@[@(0),@(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeRight];
    
    [self.page2_tip4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(tip4ImageY);
        make.width.equalTo(@102);
        make.height.equalTo(@98);
    }];
    
    IFTTTAlphaAnimation *page2_tip4AlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_tip4];
    [page2_tip4AlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_tip4AlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_tip4AlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_tip4AlphaAnimation];
    
    //tip5图标动画
    [self keepView:self.page2_tip5 onPages:@[@(0), @(0.8), @(2.1)] atTimes:@[@(0), @(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeRight];
    
    [self.page2_tip5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(tip5ImageY);
        make.width.equalTo(@72);
        make.height.equalTo(@70);
    }];
    
    IFTTTAlphaAnimation *page2_tip5AlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_tip5];
    [page2_tip5AlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_tip5AlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_tip5AlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_tip5AlphaAnimation];
    
    //tip3图标动画
    [self keepView:self.page2_tip3 onPages:@[@(0), @(1), @(2)] atTimes:@[@(0), @(1), @(2)] withAttribute:IFTTTHorizontalPositionAttributeCenterX];
    
    [self.page2_tip3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@104);
        make.height.equalTo(@102);
    }];
    
    IFTTTAlphaAnimation *page2_tip3AlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page2_tip3];
    [page2_tip3AlphaAnimation addKeyframeForTime:0 alpha:0];
    [page2_tip3AlphaAnimation addKeyframeForTime:1 alpha:1];
    [page2_tip3AlphaAnimation addKeyframeForTime:2 alpha:0];
    [self.animator addAnimation:page2_tip3AlphaAnimation];
    
    NSLayoutConstraint *page2_tip3VerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page2_tip3
                                                                                    attribute:NSLayoutAttributeTop
                                                                                    relatedBy:NSLayoutRelationEqual
                                                                                       toItem:self.contentView
                                                                                    attribute:NSLayoutAttributeTop
                                                                                   multiplier:1.f constant:tip3ImageY];
    [self.contentView addConstraint:page2_tip3VerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page2_tip3VerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                      constraint:page2_tip3VerticalConstraint
                                                                                                                       attribute:IFTTTLayoutAttributeHeight
                                                                                                                   referenceView:self.contentView constant:tip3ImageY];
    
    [page2_tip3VerticalAnimation addKeyframeForTime:0 multiplier:-0.05f withEasingFunction:IFTTTEasingFunctionEaseInCubic];
    [page2_tip3VerticalAnimation addKeyframeForTime:1 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseInCubic];
    [page2_tip3VerticalAnimation addKeyframeForTime:2 multiplier:-0.05f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [self.animator addAnimation:page2_tip3VerticalAnimation];
}

- (void)configurePage3Animation {
    
    float titleImageY = SCREEN_SIZE.height>480 ? 50 : 20;
    float contentImageY = SCREEN_SIZE.width>320 ? 20 : 50;
    
    //page3的动画
    //title动画
    [self keepView:self.page3_title onPages:@[@(2), @(1)] atTimes:@[@(2), @(3)]];
    [self.page3_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(titleImageY);
        make.width.equalTo(@261);
        make.height.equalTo(@63);
    }];
    
    //小图标动画
    [self keepView:self.page3_smallIcon onPages:@[@(2), @(3)] atTimes:@[@(2), @(3)] withAttribute:IFTTTHorizontalPositionAttributeRight offset:-10];
    
    [self.page3_smallIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@31);
    }];
    
    NSLayoutConstraint *page3_smallIconVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page3_smallIcon
                                                                                         attribute:NSLayoutAttributeTop
                                                                                         relatedBy:NSLayoutRelationEqual
                                                                                            toItem:self.contentView
                                                                                         attribute:NSLayoutAttributeTop
                                                                                        multiplier:1.f constant:20.f];
    [self.contentView addConstraint:page3_smallIconVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page3_smallIconVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                           constraint:page3_smallIconVerticalConstraint
                                                                                                                            attribute:IFTTTLayoutAttributeHeight
                                                                                                                        referenceView:self.contentView constant:20];
    
    [page3_smallIconVerticalAnimation addKeyframeForTime:2 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page3_smallIconVerticalAnimation addKeyframeForTime:3 multiplier:-1.f];
    [self.animator addAnimation:page3_smallIconVerticalAnimation];
    
    //page3_content
    [self keepView:self.page3_content onPages:@[@(1), @(2), @(3)] atTimes:@[@(1), @(2), @(3)]];
    
    [self.page3_content mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(contentImageY);
        make.width.equalTo(@(301*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(422*(SCREEN_SIZE.width/375)));
    }];
    
    IFTTTAlphaAnimation *page3_contentAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page3_content];
    [page3_contentAlphaAnimation addKeyframeForTime:1 alpha:0];
    [page3_contentAlphaAnimation addKeyframeForTime:2 alpha:1];
    [page3_contentAlphaAnimation addKeyframeForTime:3 alpha:0];
    [self.animator addAnimation:page3_contentAlphaAnimation];
    
    IFTTTScaleAnimation *page3_contentScaleAnimation = [IFTTTScaleAnimation animationWithView:self.page3_content];
    [page3_contentScaleAnimation addKeyframeForTime:1 scale:0.1];
    [page3_contentScaleAnimation addKeyframeForTime:2 scale:1];
    [page3_contentScaleAnimation addKeyframeForTime:3 scale:0.1];
    [self.animator addAnimation:page3_contentScaleAnimation];
    
}

- (void)configurePage4Animation {
    
    float titleImageY = SCREEN_SIZE.height>480 ? 50 : 20;
    float contentImageY = SCREEN_SIZE.width>320 ? 20 : 50;
    
    //page4的动画
    //标题动画
    [self keepView:self.page4_title onPages:@[@(3), @(2)] atTimes:@[@(3), @(4)]];
    [self.page4_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(titleImageY);
        make.width.equalTo(@278);
        make.height.equalTo(@59);
    }];
    
    //小图标动画
    [self keepView:self.page4_smallIcon onPages:@[@(3), @(4)] atTimes:@[@(3), @(4)] withAttribute:IFTTTHorizontalPositionAttributeRight offset:-10];
    
    [self.page4_smallIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@31);
    }];
    
    NSLayoutConstraint *page4_smallIconVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page4_smallIcon
                                                                                         attribute:NSLayoutAttributeTop
                                                                                         relatedBy:NSLayoutRelationEqual
                                                                                            toItem:self.contentView
                                                                                         attribute:NSLayoutAttributeTop
                                                                                        multiplier:1.f constant:20.f];
    [self.contentView addConstraint:page4_smallIconVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page4_smallIconVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                           constraint:page4_smallIconVerticalConstraint
                                                                                                                            attribute:IFTTTLayoutAttributeHeight
                                                                                                                        referenceView:self.contentView constant:20];
    
    [page4_smallIconVerticalAnimation addKeyframeForTime:3 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page4_smallIconVerticalAnimation addKeyframeForTime:4 multiplier:-1.f];
    [self.animator addAnimation:page4_smallIconVerticalAnimation];
    
    
    //page4_content动画
    [self keepView:self.page4_content onPages:@[@(2), @(3), @(4)] atTimes:@[@(2), @(3), @(4)]];
    
    [self.page4_content mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(contentImageY);
        make.width.equalTo(@(282*(SCREEN_SIZE.width/375)));
        make.height.equalTo(@(402*(SCREEN_SIZE.width/375)));
    }];
    
    IFTTTAlphaAnimation *page4_contentAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page4_content];
    [page4_contentAlphaAnimation addKeyframeForTime:2 alpha:0];
    [page4_contentAlphaAnimation addKeyframeForTime:3 alpha:1];
    [page4_contentAlphaAnimation addKeyframeForTime:4 alpha:0];
    [self.animator addAnimation:page4_contentAlphaAnimation];
    
    IFTTTScaleAnimation *page4_contentScaleAnimation = [IFTTTScaleAnimation animationWithView:self.page4_content];
    [page4_contentScaleAnimation addKeyframeForTime:2 scale:0.1];
    [page4_contentScaleAnimation addKeyframeForTime:3 scale:1];
    [page4_contentScaleAnimation addKeyframeForTime:4 scale:0.1];
    [self.animator addAnimation:page4_contentScaleAnimation];
    
    //dollor动画
    [self keepView:self.page4_dollor onPages:@[@(1.5), @(3), @(2)] atTimes:@[@(2), @(3), @(4)] withAttribute:IFTTTHorizontalPositionAttributeLeft];
    
    [self.page4_dollor mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.offset(30);
        make.width.equalTo(@96);
        make.height.equalTo(@122);
    }];
    
    IFTTTAlphaAnimation *page4_dollorAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page4_dollor];
    [page4_dollorAlphaAnimation addKeyframeForTime:2 alpha:0];
    [page4_dollorAlphaAnimation addKeyframeForTime:3 alpha:1];
    [page4_dollorAlphaAnimation addKeyframeForTime:4 alpha:0];
    [self.animator addAnimation:page4_dollorAlphaAnimation];
    
    //rmb动画
    [self keepView:self.page4_rmb onPages:@[@(3), @(5)] atTimes:@[@(3), @(4)] withAttribute:IFTTTHorizontalPositionAttributeRight];
    
    [self.page4_rmb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.offset(-100);
        make.width.equalTo(@100);
        make.height.equalTo(@128);
    }];
    
    IFTTTAlphaAnimation *page4_rmbAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page4_rmb];
    [page4_rmbAlphaAnimation addKeyframeForTime:2 alpha:0];
    [page4_rmbAlphaAnimation addKeyframeForTime:3 alpha:1];
    [page4_rmbAlphaAnimation addKeyframeForTime:4 alpha:0];
    [self.animator addAnimation:page4_rmbAlphaAnimation];
    
}

- (void)configurePage5Animation {
    
    float titleImageY = SCREEN_SIZE.width>320 ? 0 : -60;
    float contentImageY = SCREEN_SIZE.width>320 ? 0 : -60;
    //page5的动画
    //标题动画
    [self keepView:self.page5_title onPages:@[@(3), @(4), @(5)] atTimes:@[@(3), @(4), @(5)]];
    [self.page5_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(titleImageY);
    }];
    
    IFTTTAlphaAnimation *page5_titleAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page5_title];
    [page5_titleAlphaAnimation addKeyframeForTime:3 alpha:0];
    [page5_titleAlphaAnimation addKeyframeForTime:4 alpha:1];
    [page5_titleAlphaAnimation addKeyframeForTime:5 alpha:1];
    [self.animator addAnimation:page5_titleAlphaAnimation];
    
    IFTTTScaleAnimation *page5_titleScaleAnimation = [IFTTTScaleAnimation animationWithView:self.page5_title];
    [page5_titleScaleAnimation addKeyframeForTime:3 scale:0.1];
    [page5_titleScaleAnimation addKeyframeForTime:4 scale:1];
    [page5_titleScaleAnimation addKeyframeForTime:5 scale:1];
    [self.animator addAnimation:page5_titleScaleAnimation];
    
    //背景圆圈动画
    [self keepView:self.page5_circleBg onPages:@[@(3), @(4), @(5)] atTimes:@[@(3), @(4), @(5)]];
    [self.page5_circleBg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentView).offset(contentImageY);
        make.width.height.equalTo(@300);
    }];
    
    IFTTTAlphaAnimation *page5_circleBgAlphaAnimation = [IFTTTAlphaAnimation animationWithView:self.page5_circleBg];
    [page5_circleBgAlphaAnimation addKeyframeForTime:3 alpha:0];
    [page5_circleBgAlphaAnimation addKeyframeForTime:4 alpha:1];
    [page5_circleBgAlphaAnimation addKeyframeForTime:5 alpha:1];
    [self.animator addAnimation:page5_circleBgAlphaAnimation];
    
    IFTTTScaleAnimation *page5_circleBgScaleAnimation = [IFTTTScaleAnimation animationWithView:self.page5_circleBg];
    [page5_circleBgScaleAnimation addKeyframeForTime:3 scale:0.1];
    [page5_circleBgScaleAnimation addKeyframeForTime:4 scale:1];
    [page5_circleBgScaleAnimation addKeyframeForTime:5 scale:1];
    [self.animator addAnimation:page5_circleBgScaleAnimation];
    
    //button动画
    [self keepView:self.page5_joinButton onPages:@[@(3), @(4), @(5)] atTimes:@[@(3), @(4), @(5)] withAttribute:IFTTTHorizontalPositionAttributeCenterX];
    [self.page5_joinButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@68);
    }];
    
    NSLayoutConstraint *page5_joinButtonVerticalConstraint = [NSLayoutConstraint constraintWithItem:self.page5_joinButton
                                                                                          attribute:NSLayoutAttributeBottom
                                                                                          relatedBy:NSLayoutRelationEqual
                                                                                             toItem:self.contentView
                                                                                          attribute:NSLayoutAttributeBottom
                                                                                         multiplier:1.f constant:-80.f];
    [self.contentView addConstraint:page5_joinButtonVerticalConstraint];
    
    IFTTTConstraintMultiplierAnimation *page5_joinButtonVerticalAnimation = [IFTTTConstraintMultiplierAnimation animationWithSuperview:self.contentView
                                                                                                                            constraint:page5_joinButtonVerticalConstraint
                                                                                                                             attribute:IFTTTLayoutAttributeHeight
                                                                                                                         referenceView:self.contentView constant:-80];
    
    [page5_joinButtonVerticalAnimation addKeyframeForTime:3 multiplier:1.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page5_joinButtonVerticalAnimation addKeyframeForTime:4 multiplier:0.f withEasingFunction:IFTTTEasingFunctionEaseOutCubic];
    [page5_joinButtonVerticalAnimation addKeyframeForTime:5 multiplier:0.f];
    [self.animator addAnimation:page5_joinButtonVerticalAnimation];
    
}

#pragma mark - Override numberOfPages
- (NSUInteger)numberOfPages {
    return kNumberOfPages;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
