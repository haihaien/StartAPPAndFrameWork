//
//  UIBarButtonItem+Extension.h
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem*)itemWithTargat:(id)target action:(SEL)action image:(NSString *)image hightImage:(NSString *)highImage;
@end
