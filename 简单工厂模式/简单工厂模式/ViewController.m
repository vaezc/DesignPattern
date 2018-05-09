//
//  ViewController.m
//  简单工厂模式
//
//  Created by vae on 2018/5/9.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "ViewController.h"
#import "OperationFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	OperationFactory *factory = [[OperationFactory alloc] init];
	Operation *op = [factory createOpration:OperationTypeAdd];
	op.numA = 10;
	op.numB = 5;
	double resulet = 	[op getResult];
	NSLog(@"%f",resulet);
	
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
