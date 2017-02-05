//
//  XPCircleMenuView.h
//  https://github.com/xiaopin/XPCircleMenu.git
//
//  Created by xiaopin on 2017/2/4.
//  Copyright © 2017年 xiaopin. All rights reserved.
//

#import <UIKit/UIKit.h>


@class XPCircleMenuView;
@class XPCircleMenuItem;


@protocol XPCircleMenuViewDelegate <NSObject>

@optional
- (void)circleMenuView:(XPCircleMenuView *)menuView didSelectedAtIndex:(NSInteger)index;

@end


@interface XPCircleMenuView : UIView

@property (nonatomic, weak) id<XPCircleMenuViewDelegate> delegate;
/// 内圆半径,中间留白区域圆形的半径,默认`10.0`
@property (nonatomic, assign) CGFloat innerCircleRadius;
/// 菜单按钮与外层最大圆的边框间距,默认`10.0`
@property (nonatomic, assign) CGFloat borderLayoutMargin;
/// 按钮数据
@property (nonatomic, strong) NSArray<XPCircleMenuItem *> *menuItems;
/// 菜单按钮文字颜色
@property (nonatomic, strong) UIColor *menuTextColor;
/// 菜单中间的logo图片
@property (nonatomic, strong, readonly) UIImageView *identifierImageView;
/// 当滑动手势结束时是否自动调整按钮位置,默认`YES`
@property (nonatomic, assign, getter=isAutoAdjustPosition) BOOL autoAdjustPosition;

@end
