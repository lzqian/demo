//
//  ViewController.m
//  异步请求
//
//  Created by 赖智前 on 15/12/28.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
@interface ViewController ()<NSURLConnectionDelegate>
{
    NSMutableData *mdata;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    mdata = [NSMutableData data];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [mdata appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:mdata options:NSJSONReadingAllowFragments error:nil];
    Model *model = [[Model alloc]initWithDictionary:dic];
    [self.view performSelectorOnMainThread:@selector(setText:) withObject:[model.statuses[0] objectForKey:@"text"]waitUntilDone:NO];
}
- (IBAction)MyYiBu:(id)sender {
    NSString *urlString = @"https://api.weibo.com/2/statuses/home_timeline.json?access_token=2.002Vm42G00rJ6Ra8015b9d7fV7dOPE";
    urlString =[urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:10];
        NSURLConnection *conection = [NSURLConnection connectionWithRequest:urlRequest delegate:self];
//    [NSURLConnection sendAsynchronousRequest:urlRequest queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
//        Model *model = [[Model alloc]initWithDictionary:dic];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            self.view = [model.statuses[0] objectForKey:@"text"];
//        });
//    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
