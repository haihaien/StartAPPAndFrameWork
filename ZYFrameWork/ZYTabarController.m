//
//  ZYTabarController.m
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import "ZYTabarController.h"
#import "ZYTabBar.h"
#import "ZYNavigationContoller.h"
#import "OneViewController.h"
#import "TwoViewController.h"
@interface ZYTabarController() <ZYTabBarDelegate>
@end
@implementation ZYTabarController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addChildVc:[[OneViewController alloc] init] title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    [self addChildVc:[[TwoViewController alloc] init] title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
    ZYTabBar *tabBar = [[ZYTabBar alloc] init];
    tabBar.delegate=self;
    [self setValue:tabBar forKey:@"tabBar"];

}


/**
 添加控制器
 */

-(void)addChildVc:(UIViewController *)ChildVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedimage
{
    ChildVc.title=title;
    ChildVc.tabBarItem.image = [UIImage imageNamed:image];
    ChildVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedimage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [ChildVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:RGBColor(123, 123, 123)} forState:UIControlStateNormal];
    [ChildVc.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor orangeColor]} forState:UIControlStateSelected];
    ZYNavigationContoller *navgationVc = [[ZYNavigationContoller alloc] initWithRootViewController:ChildVc];
    [self addChildViewController:navgationVc];



}
-(void)tabBarDidClikSpecialButton:(ZYTabBar *)tabBar
{
  
    MyLog(@"我是特殊按钮");

}



@end
