//
//  XPCircleMenuItem.m
//  https://github.com/xiaopin/XPCircleMenu.git
//
//  Created by xiaopin on 2017/2/4.
//  Copyright © 2017年 xiaopin. All rights reserved.
//

#import "XPCircleMenuItem.h"

@implementation XPCircleMenuItem

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title {
    XPCircleMenuItem *item = [[XPCircleMenuItem alloc] init];
    item.icon = icon;
    item.title = title;
    return item;
}

@end
