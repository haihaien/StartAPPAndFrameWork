//
//  ZYNavigationContoller.m
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import "ZYNavigationContoller.h"

@implementation ZYNavigationContoller


+(void)initialize
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *textAtts = [NSMutableDictionary dictionary];
    textAtts[NSForegroundColorAttributeName] = [UIColor redColor];
    textAtts[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:textAtts forState:UIControlStateNormal];


}
-(void)viewDidLoad
{
    [super viewDidLoad];

}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
        //自定义左边和右边的额Item
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTargat:self action:@selector(back) image:@"navigationbar_back" hightImage:@"navigationbar_back_highlighted"];
        
    }
    [super pushViewController:viewController animated:animated];

}

-(void)back
{
    [self popViewControllerAnimated:YES];

}
@end
