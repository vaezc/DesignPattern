//
//  OperationFactory.m
//  简单工厂模式
//
//  Created by vae on 2018/5/9.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "OperationFactory.h"


@implementation OperationFactory

-(Operation *)createOpration:(OperationType )opration{
	Operation *op = [[Operation alloc] init];
	switch (opration) {
		case OperationTypeAdd:
			op = [[OperationAdd alloc] init];
			break;
		case OperationTypeSub:
			op = [[OperationSub alloc] init];
			break;
		case OperationTypeMul:
			op = [[OperationMul alloc] init];
			break;
		case OperationTypeDiv:
			op = [[OperationDiv alloc] init];
			break;
	}
	return op;
}
@end
