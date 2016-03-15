//
//  ViewController.m
//  debug
//
//  Created by 杨绍鑫 on 16/3/15.
//  Copyright © 2016年 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)test:(UIButton *)sender {
    NSArray *arr = @[@"a"];
    arr[1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
