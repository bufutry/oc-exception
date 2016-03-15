//
//  MyCrashLog.h
//  debug
//
//  Created by 杨绍鑫 on 16/3/15.
//  Copyright © 2016年 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyCrashLog : NSObject
+ (BOOL)startLog;
static void uncaughtExceptionHandler(NSException *exception);
@end
