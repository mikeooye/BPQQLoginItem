//
//  ViewController.m
//  BPQQLoginItem
//
//  Created by LiHaozhen on 15/6/16.
//  Copyright (c) 2015年 LiHaozhen. All rights reserved.
//

#import "ViewController.h"
#import "TencentApiHandler.h"

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

- (IBAction)qqLogin:(id)sender {
    
    [[TencentApiHandler defaultHandler] authorize];
}
@end
