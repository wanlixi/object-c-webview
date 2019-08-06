//
//  ViewController.m
//  webView
//
//  Created by oyo-wanlixin on 2019/8/6.
//  Copyright © 2019年 oyo-wanlixin. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WKWebView *webView;

@property (strong, nonatomic) NSString * url;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.url = @"https://www.baidu.com";
    
    [self loadUrl];
    
}
- (void)loadUrl{
    NSURLRequest * urlRequest = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:self.url]];
    [self.webView loadRequest:urlRequest];
}


@end
