//
//  YFOilViewController.m
//  MediatorModuleDemo
//
//  Created by 王雪剑 on 2019/6/6.
//  Copyright © 2019年 zkml－wxj. All rights reserved.
//

#import "YFOilViewController.h"

@interface YFOilViewController ()

@end

@implementation YFOilViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"加油模块";
    self.view.backgroundColor = [UIColor redColor];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self createView];
    [self printParams];
}

- (void)createView{
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(20, 400, 345, 40);
    [btn1 setTitle:@"进入维保模块" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor purpleColor];
    [btn1 addTarget:self action:@selector(btnClick1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
}

- (void)btnClick1:(UIButton *)sender{
  
}

- (void)doSomeThing{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 240, 345, 60)];
    label.textColor = [UIColor purpleColor];
    label.text = @"执行了方法";
    label.numberOfLines = 0;
    [self.view addSubview:label];
}

- (void)printParams{
    NSLog(@"这里是加油模块\n");
    NSLog(@"%@\n",_oilString1);
    NSLog(@"%@\n",_oilString2);
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, 345, 60)];
    label.textColor = [UIColor purpleColor];
    label.text = [NSString stringWithFormat:@"第一个参数：%@\n第二个参数：%@",_oilString1,_oilString2];
    label.numberOfLines = 0;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
