//
//  AbstractLogger.m
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "AbstractLogger.h"

@implementation AbstractLogger
@dynamic Info;
@dynamic Debug;
@dynamic Error;

-(void)logMessage:(int)level message:(NSString *)message{
	if (self.level <= level) {
		[self write:message];
	}
	if (self.nexLogger) {
		[self.nexLogger logMessage:level message:message];
	}
}

+ (int)Info{
	return 1;
}

+ (int)Debug{
	return 2;
}

+ (int)Error{
	return 3;
}

@end
