//
//  UIBarButtonItem+Extension.m
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
+(UIBarButtonItem *)itemWithTargat:(id)target action:(SEL)action image:(NSString *)image hightImage:(NSString *)highImage
{

    UIButton *but = [UIButton buttonWithType:UIButtonTypeCustom];
    //设置图片
    [but setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [but setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
//设置尺寸
    but.size = but.currentBackgroundImage.size;
    [but addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:but];
}
@end
