//
//  DebugTools.m
//  DebugTools
//
//  Created by 马胜骁 on 2016/12/16.
//  Copyright © 2016年 马胜骁. All rights reserved.
//

#import "DebugTools.h"
#import "DebugViewController.h"

@implementation DebugTools

//- (instancetype)init {

//}
+ (void)debugWindows {
    UIWindow *window = [[UIWindow alloc] init];
    window.backgroundColor = [UIColor clearColor];
    DebugViewController *debugVC = [[DebugViewController alloc] init];
    window.rootViewController = debugVC;
    debugVC.debugWindow = window;
    [window makeKeyAndVisible];
    //    UIView *view = [UIView new];
    window.windowLevel = 100001;
  //  [window addSubview:self];
//    _delegate.levelWindow = window;
    
    window.frame = CGRectMake(100, 200, 180, 100);
 //   window.backgroundColor = [UIColor redColor];

}

@end
