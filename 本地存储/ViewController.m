//
//  ViewController.m
//  本地存储
//
//  Created by 张冲 on 2018/9/19.
//  Copyright © 2018年 张冲. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //获取根目录
    NSString *homeDir = NSHomeDirectory();
    NSLog(@"homeDir = %@",homeDir);

    //获取Documents
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSLog(@"paths = %@",paths);

    //获取caches
    NSArray *cachepaths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSLog(@"cachepaths = %@",cachepaths);

    NSString *temString = NSTemporaryDirectory();
    NSLog(@"tempaths = %@",temString);

    temString =  [temString stringByAppendingPathComponent:@"zhangcc.txt"];
    NSLog(@"tempaths = %@",temString);

    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"zhangcc",@"name",@"18",@"age", nil];
    [dic writeToFile:temString atomically:YES];

    NSDictionary *localDic = [NSDictionary dictionaryWithContentsOfFile:temString];
    NSLog(@"咯擦了 Di 吃= %@",localDic);

    // Do any additional setup after loading the view, typically from a nib.
}


@end
