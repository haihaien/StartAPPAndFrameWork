//
//  StartViewController.m
//  ZYFrameWork
//
//  Created by LeMo-test on 16/6/6.
//  Copyright © 2016年 LeMo-test. All rights reserved.
//

#import "StartViewController.h"
#import "ZYTabarController.h"
#define NewFeatureCount 4
@interface StartViewController()<UIScrollViewDelegate>
@property (nonatomic, weak) UIPageControl *pageController;

@end
@implementation StartViewController
-(void)viewDidLoad
{
    UIScrollView *scrllView  = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrllView];
    CGFloat w = scrllView.width;
    CGFloat h = scrllView.height;
    for (int i=0; i<NewFeatureCount;i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame=CGRectMake(i*w, 0, w, h);
        NSString *imageName = [NSString stringWithFormat:@"图片%d.jpg",i+1];
        imageView.image = [UIImage imageNamed:imageName];
        [scrllView addSubview:imageView];
        if (i == NewFeatureCount-1) {
            [self setLastImageView:imageView];
        }
    }
    scrllView.contentSize = CGSizeMake(NewFeatureCount*w, h);
    scrllView.showsHorizontalScrollIndicator = NO;
    scrllView.bounces=NO;
    scrllView.pagingEnabled =YES;
    scrllView.delegate=self;
    
    UIPageControl *pageControl = [[UIPageControl alloc] init];
    pageControl.numberOfPages = NewFeatureCount;
    pageControl.currentPageIndicatorTintColor = [UIColor redColor];
    pageControl.pageIndicatorTintColor = [UIColor blueColor];
    pageControl.centerX = w*0.5;
    pageControl.centerY = h-50;
    [self.view addSubview:pageControl];
    self.pageController=pageControl;

}

-(void)setLastImageView:(UIImageView*)imageView
{
    imageView.userInteractionEnabled = YES;
    UIButton *startBtn = [[UIButton alloc] init];
    [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button"] forState:UIControlStateNormal];
    [startBtn setBackgroundImage:[UIImage imageNamed:@"new_feature_finish_button_highlighted"] forState:UIControlStateHighlighted];
    startBtn.size = startBtn.currentBackgroundImage.size;
    startBtn.centerX = imageView.width*0.5;
    startBtn.centerY = imageView.height*0.65;
    [startBtn setTitle:@"查看更多美女" forState:UIControlStateNormal];
    [startBtn addTarget:self action:@selector(startClik) forControlEvents:UIControlEventTouchUpInside];
    [imageView addSubview:startBtn];
    
}
-(void)startClik
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    window.rootViewController = [[ZYTabarController alloc] init];


}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    double page = scrollView.contentOffset.x/scrollView.width;
    self.pageController.currentPage=(int)(page+0.5);


}


@end
