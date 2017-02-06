//
//  ViewController.m
//  Example
//
//  Created by nhope on 2017/1/22.
//  Copyright © 2017年 xiaopin. All rights reserved.
//

#import "ViewController.h"
#import "XPCircleMenuView.h"
#import "XPCircleMenuItem.h"

@interface ViewController ()<XPCircleMenuViewDelegate>

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    XPCircleMenuView *menuView = [[XPCircleMenuView alloc] init];
    menuView.frame = CGRectMake(0.0, 0.0, 300.0, 300.0);
    menuView.center = self.view.center;
    menuView.backgroundColor = [UIColor orangeColor];
    menuView.innerCircleRadius = 40.0;
//    menuView.borderLayoutMargin = 40.0;
//    menuView.autoAdjustPosition = NO;
//    menuView.defaultOffsetRadians = M_PI/3;
    menuView.delegate = self;
    menuView.menuTextColor = [UIColor redColor];
    menuView.menuItems = @[
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_1_mt@2x.png" title:@"菜单1"],
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_2_mt@2x.png" title:@"菜单2"],
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_3_mt@2x.png" title:@"菜单3"],
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_4_mt@2x.png" title:@"菜单4"],
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_5_mt@2x.png" title:@"菜单5"],
                           [XPCircleMenuItem itemWithIcon:@"gclive_favordeco_6_mt@2x.png" title:@"我的检测"],
                           ];
    menuView.identifierImageView.layer.borderColor = [[UIColor purpleColor] CGColor];
    menuView.identifierImageView.layer.borderWidth = 2.0;
    NSString *icon = [[NSBundle mainBundle] pathForResource:@"avatar.jpg" ofType:nil];
    menuView.identifierImageView.image = [UIImage imageWithContentsOfFile:icon];
    menuView.layer.borderWidth = 2.0;
    menuView.layer.borderColor = [[UIColor purpleColor] CGColor];
    [self.view addSubview:menuView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - <XPCircleMenuViewDelegate>

- (void)circleMenuView:(XPCircleMenuView *)menuView didSelectedAtIndex:(NSInteger)index {
    XPCircleMenuItem *item = menuView.menuItems[index];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[NSString stringWithFormat:@"select at %ld, %@",index,item.title] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}


@end

