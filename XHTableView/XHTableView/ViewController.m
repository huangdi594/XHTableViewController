//
//  ViewController.m
//  XHTableView
//
//  Created by XuHuan on 16/6/17.
//  Copyright © 2016年 XuHuan. All rights reserved.
//

#import "ViewController.h"
#import "XHTableViewController.h"

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
- (IBAction)pushnext:(id)sender {
    XHTableViewController *xh = [[XHTableViewController alloc] init];
    [self.navigationController pushViewController:xh animated:YES];
}

@end
