//
//  CountDownClass.h
//
//  倒计时类
//  Created by Yun on 16/3/9.
//  Copyright © 2016年 Yun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CountDownClass : NSObject

/**
 *  @author Yun
 *
 *  倒计时单例类
 *
 *  @return 返回当前类对象
 */

+ (CountDownClass *)shareInstance;


/**
 *  @author Yun
 *
 *  倒计时 注意 请在block中使用主线程中更新界面
 * *  dispatch_async(dispatch_get_main_queue(), ^{
 
 //  TODO
 });

 *

 *  @param duration    倒计时时长
 *  @param actionBlock 倒计时进行中每秒的操作回调
 *  @param finishBlock 倒计时结束后的操作回调
 */
- (void)cd_countDownWithDuration:(int)duration
                     actionBlock:(void(^)(int currentTime))actionBlock
                          finish:(void(^)())finishBlock;


@end
