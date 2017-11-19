//
//  ViewController.m
//  DebugTools
//
//  Created by 马胜骁 on 2016/12/16.
//  Copyright © 2016年 马胜骁. All rights reserved.
//

#import "ViewController.h"
#import "DebugViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sure:(id)sender {
    DebugViewController *debugView = [[DebugViewController alloc] init];
    [self presentViewController:debugView animated:YES completion:nil];
    
}

- (IBAction)cancle:(id)sender {
   
}

@end
