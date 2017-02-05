//
//  XPCircleMenuItem.h
//  https://github.com/xiaopin/XPCircleMenu.git
//
//  Created by xiaopin on 2017/2/4.
//  Copyright © 2017年 xiaopin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XPCircleMenuItem : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *title;

+ (instancetype)itemWithIcon:(NSString *)icon title:(NSString *)title;

@end
