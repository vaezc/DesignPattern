//
//  ConsoleLogger.h
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "AbstractLogger.h"

@interface ConsoleLogger : AbstractLogger
-(instancetype)init:(int)level;
@end
