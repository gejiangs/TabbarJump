//
//  FirstChildViewController.m
//  TabbarJump
//
//  Created by gejiangs on 2019/6/20.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import "FirstChildViewController.h"
#import "FirstViewController.h"

@interface FirstChildViewController ()

@end

@implementation FirstChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"第一页、详情";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initUI];
}

-(void)initUI
{
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(100, 100, 150, 100);
    [btn1 setTitle:@"返回第二页-首页" forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor grayColor];
    [btn1 addTarget:self action:@selector(goSecondHome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(100, 300, 150, 100);
    [btn2 setTitle:@"返回第二页-详情" forState:UIControlStateNormal];
    btn2.backgroundColor = [UIColor grayColor];
    [btn2 addTarget:self action:@selector(goSecondDetail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}

-(void)goSecondHome
{
    FirstViewController *first = [self.navigationController.viewControllers firstObject];
    first.action = GoActionSecond;
    
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)goSecondDetail
{
    FirstViewController *first = [self.navigationController.viewControllers firstObject];
    first.action = GoActionSecondDetail;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
