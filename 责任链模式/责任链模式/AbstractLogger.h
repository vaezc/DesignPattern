//
//  AbstractLogger.h
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface AbstractLogger : NSObject
@property(nonatomic, assign,class) int  Info;
@property(nonatomic, assign,class) int  Debug;
@property(nonatomic, assign,class) int  Error;

@property (nonatomic, assign) int  level;
@property (nonatomic, strong) AbstractLogger *nexLogger;

-(void)logMessage:(int)level message:(NSString *)message;
-(void)write:(NSString *)message;
@end
