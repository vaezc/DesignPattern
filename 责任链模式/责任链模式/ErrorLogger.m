//
//  ErrorLogger.m
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "ErrorLogger.h"

@implementation ErrorLogger

- (instancetype)init:(int)level
{
	self = [super init];
	if (self) {
		self.level = level;
	}
	return self;
}

- (void)write:(NSString *)message{
	NSLog(@"Error Console::Logger:%@",message);
}


@end
