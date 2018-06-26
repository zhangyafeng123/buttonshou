//
//  lineV.m
//  lineView
//
//  Created by tao shiqiang on 2017/9/18.
//  Copyright © 2017年 zhangyafeng. All rights reserved.
//

#import "lineV.h"



@interface lineV ()

@property(nonatomic,assign) NSInteger index;
@property(nonatomic,assign) NSInteger index2;


@property (nonatomic,strong) UIView *testView;

@property(nonatomic,assign) NSInteger indexTest;

@end

@implementation lineV

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    //-------------画直线----------------------------------------
    
    // 设置上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //设置线条的样式
    CGContextSetLineCap(context, kCGLineCapRound);
    //设置颜色宽度
    CGContextSetLineWidth(context, 1);
    CGContextSetAllowsAntialiasing(context, true);
    //设置颜色透明度
//    CGContextSetRGBStrokeColor(context, 70.0/255.0, 241.0/255.0, 241.0/255.0, 1.0);
    //设置颜色
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextBeginPath(context);
    // 开始绘制 x,y 为开始点的坐标
    // 画直线， x,y 为线条结束点的坐标
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 100, 500);
    // 开始绘制
    CGContextStrokePath(context);
     
    //绘制虚线
    CGContextRef xuxianline = UIGraphicsGetCurrentContext();
    //设置虚线颜色
    CGContextSetStrokeColorWithColor(xuxianline, [UIColor greenColor].CGColor);
    //设置虚线宽度
    CGContextSetLineWidth(xuxianline, 1.0);
    //设置虚线起点
    CGContextMoveToPoint(xuxianline, 200, 100);
    //
    CGContextAddLineToPoint(xuxianline, 200, 500);
    //设置虚线排列的宽度间隔，下面的arr中的数字表示先绘制10个点再跳过5个点
    CGFloat arr[] = {10,5};
    //下面最后一个参数 2 代表排列的个数
    CGContextSetLineDash(xuxianline, 0, arr, 2);
    CGContextDrawPath(xuxianline, kCGPathStroke);
    
    //绘制贝兹曲线
    CGContextRef newline = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(newline, 2.0);
    CGContextSetStrokeColorWithColor(newline, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(newline, 100, 100);
    CGContextAddCurveToPoint(newline, 400, 300, 100, 400, 400, 100);
    CGContextStrokePath(newline);
    
    //绘制连续的曲线
    CGContextRef moreline = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(moreline, [UIColor yellowColor].CGColor);
    CGContextSetLineWidth(moreline, 5.0);
    CGContextMoveToPoint(moreline, 400, 100);
    CGContextAddCurveToPoint(moreline, 310, 100, 300, 200, 220, 220);
    CGContextAddCurveToPoint(moreline, 290, 140, 280, 180, 240, 190);
    CGContextStrokePath(moreline);
    //画一个方形图形，没有边框
    CGContextRef fang = UIGraphicsGetCurrentContext();
    CGContextSetRGBFillColor(fang, 0, 0.25, 0, 0.5);
    CGContextFillRect(fang, CGRectMake(30, 200, 200, 200));
    CGContextStrokePath(fang);
    
    // 画弧线
    CGContextSetRGBStrokeColor(context, 0.3, 0.4, 0.5, 1);// 线条色艳
    CGContextAddArc(context, 180, 300, 50, 0, 180*(M_PI/180), 0);
    CGContextStrokePath(context);
    
    
    //画方形边框
    CGContextRef context5 = UIGraphicsGetCurrentContext(); //设置上下文
    CGContextSetLineWidth(context5, 3.0);
    CGContextSetRGBStrokeColor(context5, 0.8, 0.1, 0.8, 1);
    CGContextStrokeRect(context5, CGRectMake(5, 5, 300, 400));//画方形边框, 参数2:方形的坐标。
    
    
    //画椭圆
    CGRect aRect= CGRectMake(80, 80, 160, 100);
    CGContextSetRGBStrokeColor(context, 0.6, 0.9, 0, 1.0);
    CGContextSetLineWidth(context, 3.0);
    CGContextAddEllipseInRect(context, aRect); //椭圆, 参数2:椭圆的坐标。
    CGContextDrawPath(context, kCGPathStroke);
    
    //画实心圆
    CGContextFillEllipseInRect(context, CGRectMake(95, 195, 200.0, 100));//画实心圆,参数2:圆坐标
    
    
    //画一个菱形
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 150);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextStrokePath(context);
    
    //填充了一段路径:
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 150, 150);
    CGContextAddLineToPoint(context, 100, 200);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 100, 100);
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    CGContextFillPath(context);
}



@end
