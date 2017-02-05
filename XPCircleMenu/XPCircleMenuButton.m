//
//  XPCircleMenuButton.m
//  https://github.com/xiaopin/XPCircleMenu.git
//
//  Created by xiaopin on 2017/2/5.
//  Copyright © 2017年 xiaopin. All rights reserved.
//

#import "XPCircleMenuButton.h"

@implementation XPCircleMenuButton

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (nil == self.imageView.image) {
        self.imageView.frame = CGRectZero;
        self.titleLabel.frame = self.bounds;
    } else if (nil == self.titleLabel.text || 0 == self.titleLabel.text.length) {
        self.imageView.frame = self.bounds;
        self.titleLabel.frame = CGRectZero;
    } else {
        CGFloat width = CGRectGetWidth(self.frame);
        CGFloat height = CGRectGetHeight(self.frame);
        CGFloat textHeight = 15.0;
        CGFloat lineHeight = 5.0;
        self.imageView.frame = CGRectMake(0.0, 0.0, width, height-textHeight-lineHeight);
        self.titleLabel.frame = CGRectMake(0.0, CGRectGetMaxY(self.imageView.frame)+lineHeight, width, textHeight);
    }
}

@end
