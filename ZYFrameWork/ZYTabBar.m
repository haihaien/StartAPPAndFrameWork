//
//  ZYTabBar.m
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import "ZYTabBar.h"
#import "ZYButton.h"
@interface ZYTabBar()
@property (nonatomic, strong) ZYButton *specialBut;
@end
@implementation ZYTabBar
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.specialBut = [ZYButton buttonWithType:UIButtonTypeCustom];
       
        [self.specialBut setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [self.specialBut setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateHighlighted];
        [self.specialBut setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [self.specialBut setImage:[UIImage imageNamed:@"tabbar_compose_icon_add_highlighted"] forState:UIControlStateHighlighted];
        self.specialBut.size = self.specialBut.currentBackgroundImage.size;
        [self.specialBut addTarget:self action:@selector(plusBtnClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.specialBut];
        
    }
    return self;


}

/**
 特殊按钮的点击事件
 */
-(void)plusBtnClick
{

    if ([self.delegate respondsToSelector:@selector(tabBarDidClikSpecialButton:)]) {
        [self.delegate tabBarDidClikSpecialButton:self];
    }

}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.specialBut.centerX = self.width*0.5;
    self.specialBut.centerY = self.height*0.5;
    CGFloat tabBarButtonW = self.width/3;
    CGFloat tabBarButtonIndex = 0;
    for (UIView *childView in self.subviews) {
        Class class = NSClassFromString(@"UITabBarButton");
        if ([childView isKindOfClass:class]) {
            childView.x = tabBarButtonIndex * tabBarButtonW;
            childView.width = tabBarButtonW;
            tabBarButtonIndex++;
            if (tabBarButtonIndex==1) {
                tabBarButtonIndex++;
            }
        }
    }

}







@end
