//
//  SecondViewController.m
//  TabbarJump
//
//  Created by gejiangs on 2019/6/20.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import "SecondViewController.h"
#import "SecondChildViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"第二页";
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (self.gotoDetail == NO) {
        return;
    }
    
    SecondChildViewController *vc = [[SecondChildViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    
    self.gotoDetail = NO;
}


@end
