//
//  btnView.h
//  lineView
//
//  Created by tao shiqiang on 2017/9/18.
//  Copyright © 2017年 zhangyafeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol btnViewDelegate <NSObject>

- (void)clickbtnactionwith:(NSInteger)index;

@end


@interface btnView : UIView

@property (nonatomic, assign)id<btnViewDelegate>delegate;

- (instancetype)initWithFrame:(CGRect)frame imagestr:(NSString *)imgstr with:(NSInteger)tag;

@end
