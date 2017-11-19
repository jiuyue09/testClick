//
//  DebugViewController.m
//  DebugTools
//
//  Created by 马胜骁 on 2016/12/16.
//  Copyright © 2016年 马胜骁. All rights reserved.
//

#import "DebugViewController.h"

@interface DebugViewController ()
@property (weak, nonatomic) IBOutlet UIView *osView;
@property (weak, nonatomic) IBOutlet UIView *customView;
@property (weak, nonatomic) IBOutlet UIButton *changeServer;

@end

@implementation DebugViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _osView.hidden = YES;
    _customView.hidden = YES;
    _changeServer.layer.cornerRadius = 22;
    _changeServer.clipsToBounds = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sure:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)changeAnimation:(id)sender {
    UIButton *button = sender;
    if (button.selected) {
        [UIView animateWithDuration:0.5 animations:^{
            self.debugWindow.frame = CGRectMake(100, 200, 180, 100);
         //   button.frame = CGRectMake(0, 0, 180, 100);
            _osView.hidden = YES;
            _customView.hidden = YES;
            button.selected = NO;
        }];
    } else {
        [UIView animateWithDuration:0.5 animations:^{
            self.debugWindow.frame = [UIScreen mainScreen].bounds;
            _osView.hidden = NO;
            _customView.hidden = NO;
      //      button.frame = CGRectMake(100, 200, 180, 100);
            button.selected = YES;
        }];
    }
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
