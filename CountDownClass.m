//
//  CountDownClass.m
//  PisHon
//
//  Created by Yun on 16/3/9.
//  Copyright © 2016年 Yun. All rights reserved.
//

#import "CountDownClass.h"

@implementation CountDownClass

+(CountDownClass *)shareInstance
{
    CountDownClass *countDown = [[CountDownClass alloc]init];
    return countDown;
}
- (void)cd_countDownWithDuration:(int)duration  actionBlock:(void(^)(int currentTime))actionBlock  finish:(void(^)())finishBlock
{
    
    __block int myDuration = duration;
    
    
    
    
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);
    dispatch_source_set_timer(_timer,dispatch_walltime(NULL, 0),1.0*NSEC_PER_SEC, 0); //每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if(myDuration <= 0){ //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            
            finishBlock();
            
        }else{
            
            actionBlock(myDuration);
            
//            int minutes = myDuration / 60;
//            int seconds = myDuration % 60;
//            NSString *strTime = [NSString stringWithFormat:@"%d分%.2d秒后重新获取验证码",minutes, seconds];
//            dispatch_async(dispatch_get_main_queue(), ^{
//                //设置界面的按钮显示 根据自己需求设置
//                
//                NSLog(@"%@",strTime);
//                
//            });
            myDuration--;
        }
    });
    dispatch_resume(_timer);

    
    
    
    
    
    
//    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
//    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 1 * NSEC_PER_SEC);
//    dispatch_source_set_event_handler(timer, ^{
//        
//        NSLog(@"%d",myDuration);
//        
////        if (myDuration <= 0) {
////            
////            finishBlock();
////            
////        }else{
////            
////            actionBlock (myDuration);
////            
////        }
//        
//        myDuration --;
//        
//        
//    });
//    dispatch_resume(timer);
    
    
}

@end
