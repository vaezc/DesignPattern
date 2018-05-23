//
//  ViewController.m
//  策略模式
//
//  Created by Vae on 2018/5/23.
//  Copyright © 2018年 Vae. All rights reserved.
//

#import "ViewController.h"
#import "Strategy.h"
#import "Context.h"
#import "OperationAdd.h"
#import "OperationSubstract.h"
#import "OprationMultiply.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Context *context = [[Context alloc] initWithStrategy:[[OperationAdd alloc] init]];
    int result1 =  [context executeStrategyNum1:5 Num2:6];
    NSLog(@"%d",result1);
    
    Context *context2 = [[Context alloc] initWithStrategy:[[OperationSubstract alloc] init]];
    int result2 = [context2 executeStrategyNum1:10 Num2:5];
    NSLog(@"%d",result2);
    
    Context *context3 = [[Context alloc] initWithStrategy:[[OprationMultiply alloc] init]];
    int result3 = [context3 executeStrategyNum1:15 Num2:5];
    NSLog(@"%d",result3);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
