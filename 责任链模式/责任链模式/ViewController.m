//
//  ViewController.m
//  责任链模式
//
//  Created by vae on 2018/5/14.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "ViewController.h"
#import "AbstractLogger.h"
#import "ConsoleLogger.h"
#import "ErrorLogger.h"
#import "FileLogger.h"
@interface ViewController ()

@end

@implementation ViewController

-(AbstractLogger *)getChainOfloggers{
	AbstractLogger *consoleLogger = [[ConsoleLogger alloc] init:AbstractLogger.Info];
	AbstractLogger *fileLogger = [[FileLogger alloc] init:AbstractLogger.Debug];
	AbstractLogger *errorLogger = [[ErrorLogger alloc] init:AbstractLogger.Error];
	
	[errorLogger setNexLogger:fileLogger];
	[fileLogger setNexLogger:consoleLogger];
	
	return errorLogger;
}

- (void)viewDidLoad {
	[super viewDidLoad];
	AbstractLogger *loggerChain = [self getChainOfloggers];
	[loggerChain logMessage:AbstractLogger.Info message:@"info message"];
	[loggerChain logMessage:AbstractLogger.Debug message:@"debug message"];
	[loggerChain logMessage:AbstractLogger.Error message:@"Error message"];


}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
