//
//  OpeationAdd.m
//  简单工厂模式
//
//  Created by vae on 2018/5/9.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import "OperationAdd.h"

@implementation OperationAdd
-(double)getResult{
	return self.numA + self.numB;
}
@end
