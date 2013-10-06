//
//  ProductViewController.m
//  20131006.WebViewDemo
//
//  Created by Chang, Liang on 13-10-6.
//  Copyright (c) 2013年 Chang, Liang. All rights reserved.
//

#import "ProductViewController.h"

@interface ProductViewController ()

@end

@implementation ProductViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//load local html file
- (IBAction)testLoadHTMLString:(id)sender {
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    NSString *html = [[NSString alloc] initWithContentsOfFile:htmlPath encoding:NSUTF8StringEncoding error:&error];
    
    //load html file after checking
    if(error == nil){
        [self.myWebView loadHTMLString:html baseURL:bundleUrl];
    }
}
- (IBAction)testLoadData:(id)sender {
    NSString *htmlPath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSURL *bundleUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    NSError *error = nil;
    
    NSData *htmlData = [[NSData alloc] initWithContentsOfFile:htmlPath options:NSDataReadingMappedIfSafe error:&error];
    
    if(error == nil)
    {
        [self.myWebView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:bundleUrl];
    }
}


//load remote html
- (IBAction)testLoadRequest:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://www.51work6.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.myWebView loadRequest:request];
    self.myWebView.delegate = self;
}

#pragma mark -- UIWebViewDelegate method
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"%@", [self.myWebView stringByEvaluatingJavaScriptFromString:@"document.body.innerHTML"]);
}
@end
