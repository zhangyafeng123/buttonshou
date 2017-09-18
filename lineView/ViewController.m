//
//  ViewController.m
//  lineView
//
//  Created by tao shiqiang on 2017/9/18.
//  Copyright © 2017年 zhangyafeng. All rights reserved.
//

#import "ViewController.h"
#import "lineV.h"
#import "btnView.h"
@interface ViewController ()<btnViewDelegate>

@property (nonatomic, strong)btnView *btnv1;
@property (nonatomic, strong)btnView *btnv2;
@property (nonatomic, strong)btnView *btnv3;
@property (nonatomic, strong)btnView *btnv4;
@property (nonatomic, strong)btnView *btnv5;

@end

@implementation ViewController
- (void)clickbtnactionwith:(NSInteger)index
{
    
    
    
    if (index == 104) {
        
        [UIView animateWithDuration:0.5 animations:^{
            self.btnv1.frame = CGRectMake(80, 50, 100, 40);
            self.btnv1.alpha = 1.0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.5 animations:^{
                self.btnv2.frame = CGRectMake(80, 150, 100, 40);
                self.btnv2.alpha = 1.0;
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:0.5 animations:^{
                    self.btnv3.frame = CGRectMake(80, 250, 100, 40);
                    self.btnv3.alpha = 1.0;
                } completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.5 animations:^{
                        self.btnv4.frame = CGRectMake(80, 350, 100, 40);
                        self.btnv4.alpha = 1.0;
                    }];
                }];
            }];
            
        }];
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    lineV *linev = [lineV new];
//    linev.backgroundColor = [UIColor whiteColor];
//    linev.frame = self.view.frame;
//    [self.view addSubview:linev];
    
    self.btnv1 = [[btnView alloc] initWithFrame:CGRectMake(50, 50, 100, 40) imagestr:@"1-沙盘展示on" with:100];
    
    self.btnv1.delegate = self;
    [self.view addSubview:self.btnv1];
    self.btnv2 = [[btnView alloc] initWithFrame:CGRectMake(50, 150, 100, 40) imagestr:@"2-互动展示on" with:101];
    
    self.btnv2.delegate = self;
    [self.view addSubview:self.btnv2];
    self.btnv3 = [[btnView alloc] initWithFrame:CGRectMake(50, 250, 100, 40) imagestr:@"3-项目概况on" with:102];
   
    self.btnv3.delegate = self;
    [self.view addSubview:self.btnv3];
    self.btnv4 = [[btnView alloc] initWithFrame:CGRectMake(50, 350, 100, 40) imagestr:@"4-项目配套on" with:103];
    
    self.btnv4.delegate = self;
    [self.view addSubview:self.btnv4];
    
    self.btnv1.alpha = 0.0;
    self.btnv2.alpha = 0.0;
    self.btnv3.alpha = 0.0;
    self.btnv4.alpha = 0.0;
    
    self.btnv5 = [[btnView alloc] initWithFrame:CGRectMake(50, 450, 100, 40) imagestr:@"5-S.V.O服务体系on" with:104];
    self.btnv5.delegate = self;
    [self.view addSubview:self.btnv5];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
