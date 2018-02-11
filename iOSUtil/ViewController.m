//
//  ViewController.m
//  iOSUtil
//
//  Created by 蓝秀文 on 2018/2/11.
//  Copyright © 2018年 蓝秀文. All rights reserved.
//

#import "ViewController.h"
#import <WYUtil/NSObject+WYHOOK.h>

@interface ViewController ()

@end

@implementation ViewController

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self replaceSelector:@selector(description) bySelector:@selector(descriptionHook)];
    });
}

-(NSString*) descriptionHook{
    return [[self descriptionHook] stringByAppendingString:@"--Hook"];
}

-(NSString*) description{
    return @"ViewController";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"descriptionHook:%@",self);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
