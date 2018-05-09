//
//  OperationFactory.h
//  简单工厂模式
//
//  Created by vae on 2018/5/9.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"
#import "OperationAdd.h"
#import "OperationMul.h"
#import "OperationDiv.h"
#import "OperationSub.h"
typedef NS_ENUM(NSUInteger, OperationType) {
	OperationTypeAdd = 0,
	OperationTypeSub,
	OperationTypeMul,
	OperationTypeDiv
};

@interface OperationFactory : NSObject
-(Operation *)createOpration:(OperationType )opration;

@end
