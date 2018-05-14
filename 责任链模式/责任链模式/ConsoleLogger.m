//
//  ConsoleLogger.m
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "ConsoleLogger.h"

@implementation ConsoleLogger

-(instancetype)init:(int)level{
	if (self = [super init]) {
		self.level = level;
	}
	return self;
}

- (void)write:(NSString *)message{
	NSLog(@"Standard Console::Logger:%@",message);
}

	
		
	


@end
