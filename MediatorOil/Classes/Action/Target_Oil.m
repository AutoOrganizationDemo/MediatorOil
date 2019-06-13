//
//  Target_Oil.m
//  MediatorModuleDemo
//
//  Created by 王雪剑 on 2019/6/6.
//  Copyright © 2019年 zkml－wxj. All rights reserved.
//

#import "Target_Oil.h"
#import "YFOilViewController.h"

typedef void (^CTUrlRouterCallbackBlock)(NSDictionary *info);

@implementation Target_Oil

- (UIViewController *)Action_nativeEnterOilViewController:(NSDictionary *)params{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    YFOilViewController *vc = [[YFOilViewController alloc] init];
    vc.oilString1 = params[@"key1"];
    vc.oilString2 = params[@"key2"];
    return vc;
}

- (UIViewController *)Action_nativeEnterOilViewControllerWithDoSomeThing:(NSDictionary *)params{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    YFOilViewController *vc = [[YFOilViewController alloc] init];
    vc.oilString1 = params[@"key1"];
    vc.oilString2 = params[@"key2"];
    [vc doSomeThing];
    return vc;
}

- (id)Action_showAlert:(NSDictionary *)params{
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        CTUrlRouterCallbackBlock callback = params[@"cancelAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        CTUrlRouterCallbackBlock callback = params[@"confirmAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"alert from Module oil" message:params[@"message"] preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:cancelAction];
    [alertController addAction:confirmAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertController animated:YES completion:nil];
    return nil;
}

@end
