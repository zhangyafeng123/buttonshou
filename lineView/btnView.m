//
//  btnView.m
//  lineView
//
//  Created by tao shiqiang on 2017/9/18.
//  Copyright © 2017年 zhangyafeng. All rights reserved.
//

#import "btnView.h"

@implementation btnView

- (instancetype)initWithFrame:(CGRect)frame imagestr:(NSString *)imgstr with:(NSInteger)tag
{
    if ([super initWithFrame:frame]) {
        UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
        btn.tag = tag;
        btn.frame = self.bounds;
        
        [btn setImage:[UIImage imageNamed:imgstr] forState:(UIControlStateNormal)];
        [btn addTarget:self action:@selector(btnaction:) forControlEvents:(UIControlEventTouchUpInside)];
        [self addSubview:btn];
    }
    return self;
}
- (void)btnaction:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(clickbtnactionwith:)]) {
        [self.delegate clickbtnactionwith:sender.tag];
    }
}
@end
