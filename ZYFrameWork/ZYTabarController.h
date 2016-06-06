//
//  ZYTabarController.h
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYTabarController : UITabBarController
-(void)addChildVc:(UIViewController*)ChildVc title:(NSString *)title image:(NSString*)image selectedImage:(NSString*)selectedimage;
@end
