//
//  ViewController.m
//  AoTai
//
//  Created by 驭能者 on 2018/2/6.
//  Copyright © 2018年 驭能者. All rights reserved.
//

#import "ViewController.h"
//dujuan-debug20180206模式分开判断
#ifdef DEBUG
#define DeviceToken "http://test.yunengzhe.com:846/longieb/umengPush/binding"
#else
#define DeviceToken "http://221.11.8.54:8180/longieb/umengPush/binding"
#endif
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webview = [[UIWebView alloc]init];
    //设置webview的frame
    self.webview.frame = CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-20);
    
    [self.view addSubview:self.webview];
    NSString *urlStr = @"http://www.baicu.com";
    NSURL *url = [NSURL URLWithString:urlStr];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webview loadRequest:request];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
