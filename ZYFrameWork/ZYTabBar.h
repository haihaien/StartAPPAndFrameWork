//
//  ZYTabBar.h
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYTabBar;
@protocol ZYTabBarDelegate <UITabBarDelegate>
@optional
-(void)tabBarDidClikSpecialButton:(ZYTabBar*)tabBar;

@end
@interface ZYTabBar : UITabBar
@property (nonatomic, assign) id<ZYTabBarDelegate> delegate;
@end
