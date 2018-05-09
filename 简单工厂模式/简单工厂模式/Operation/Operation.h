//
//  Operation.h
//  简单工厂模式
//
//  Created by vae on 2018/5/9.
//  Copyright © 2018年 周畅. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject
@property (nonatomic, assign) double numA;
@property (nonatomic, assign) double numB;
-(double)getResult;
@end
