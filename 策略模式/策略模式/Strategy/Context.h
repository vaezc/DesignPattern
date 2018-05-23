//
//  Context.h
//  策略模式
//
//  Created by Vae on 2018/5/23.
//  Copyright © 2018年 Vae. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

@interface Context : NSObject
-(instancetype)initWithStrategy:(id<Strategy>)strategy;
-(int)executeStrategyNum1:(int)num1 Num2:(int)num2;
@end
