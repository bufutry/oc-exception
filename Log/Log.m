//
//  Log.m
//  Log
//
//  Created by 杨绍鑫 on 16/3/15.
//  Copyright © 2016年 test. All rights reserved.
//

#import "Log.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation Log
+(BOOL)StartLog
{
    while (1) {
        
    }
    return YES;
}

- (void)_deviceInfo
{
    UIDevice *device  = [UIDevice currentDevice];
    NSString *systmVision = device.systemVersion;
    NSString *deviceName = device.name;
    NSString *fileName = [NSString stringWithFormat:@"%s",__FILE__];
    NSString *funcName = [NSString stringWithFormat:@"%s",__FUNCTION__];
    NSString *funcLine = [NSString stringWithFormat:@"%d",__LINE__];
    
    NSSetUncaughtExceptionHandler(nil);
}

void uncaughtExceptionHandler(NSException *exception)
{

    
}
@end
