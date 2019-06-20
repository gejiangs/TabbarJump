//
//  FirstViewController.m
//  TabbarJump
//
//  Created by gejiangs on 2019/6/20.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import "FirstViewController.h"
#import "FirstChildViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第一页";
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"详情" style:UIBarButtonItemStylePlain target:self action:@selector(detailAction)];
    self.navigationItem.rightBarButtonItem = item;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (self.action == GoActionNone) {
        return;
    }
    
    if (self.action == GoActionSecond) {
        self.tabBarController.selectedIndex = 1;
    }else if (self.action == GoActionSecondDetail){
        UINavigationController *navi = [self.tabBarController.viewControllers lastObject];
        SecondViewController *vc = [navi.viewControllers firstObject];
        vc.gotoDetail = YES;
        self.tabBarController.selectedIndex = 1;
    }
    
    self.action = GoActionNone;
}

-(void)detailAction
{
    FirstChildViewController *vc = [[FirstChildViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
