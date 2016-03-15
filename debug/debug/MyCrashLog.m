//
//  MyCrashLog.m
//  debug
//
//  Created by 杨绍鑫 on 16/3/15.
//  Copyright © 2016年 test. All rights reserved.
//

#import "MyCrashLog.h"
#import <UIKit/UIKit.h>
#include <sys/signal.h>

@implementation MyCrashLog

+ (BOOL)startLog
{
    static MyCrashLog *mage =nil;
    dispatch_once_t one;
    dispatch_once(&one, ^{
        mage = [MyCrashLog new];
        //注册异常
        NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
        //注册信号量
          signal(SIGABRT, headleSing);
          signal(SIGPROF, headleSing);
          signal(SIGPROF, headleSing);
    });
    return mage;
}

static void uncaughtExceptionHandler(NSException *exception)
{
  //  NSLog(@"异常:%@---",exception);
    
    UIDevice *device  = [UIDevice currentDevice];
    NSString *systmVision = device.systemVersion;
    NSString *deviceName = device.name;
    NSString *fileName = [NSString stringWithFormat:@"%s",__FILE__];
    NSString *funcName = [NSString stringWithFormat:@"%s",__FUNCTION__];
    NSString *funcLine = [NSString stringWithFormat:@"%d",__LINE__];
    NSLog(@"device：%@ systmVision:%@  deviceName:%@ fileName:%@ funcName:%@ funcLine:%@",device,systmVision,deviceName,fileName,funcName,funcLine);

}

void headleSing(int signal)
{
    
}
@end
