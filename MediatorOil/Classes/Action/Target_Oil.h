//
//  Target_Oil.h
//  MediatorModuleDemo
//
//  Created by 王雪剑 on 2019/6/6.
//  Copyright © 2019年 zkml－wxj. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Target_Oil : NSObject
//传参数
- (UIViewController *)Action_nativeEnterOilViewController:(NSDictionary *)params;
//传参数+执行方法
- (UIViewController *)Action_nativeEnterOilViewControllerWithDoSomeThing:(NSDictionary *)params;
//弹框
- (id)Action_showAlert:(NSDictionary *)params;

@end

/*******************************************
 *
 *
 *
 *1、这也是单独repo,即target-action所在的模块
 *2、具体的实现方法都在此类内，与组件内控制器的交互也在此类中，在这里可以调用当前组件内的任意控制器
 *3、action方法命名时，用native区分远程调用还是本地调用，防止黑客通过url远程调用本地的入侵事件发生
 *
 *
 ********************************************/
