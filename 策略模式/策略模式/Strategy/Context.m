//
//  Context.m
//  策略模式
//
//  Created by Vae on 2018/5/23.
//  Copyright © 2018年 Vae. All rights reserved.
//

#import "Context.h"
@interface Context()
@property (nonatomic, strong) id<Strategy> strategy;
@end

@implementation Context
-(instancetype)initWithStrategy:(id<Strategy>)strategy{
    if (self = [super init]) {
        self.strategy = strategy;
    }
    return self;
}

-(int)executeStrategyNum1:(int)num1 Num2:(int)num2{
    return [self.strategy doOperatioNnum1:num1 Num2:num2];
}
@end
