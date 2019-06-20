//
//  FirstViewController.h
//  TabbarJump
//
//  Created by gejiangs on 2019/6/20.
//  Copyright © 2019 gejiangs. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger) {
    GoActionNone = 0,
    GoActionSecond = 1,
    GoActionSecondDetail = 2
}GoAction;

@interface FirstViewController : UIViewController

@property (nonatomic, assign)   GoAction action;

@end

