//
//  KVOCrashViewController.m
//  NeverCrashDemo
//
//  Created by knewcloud on 2017/3/28.
//  Copyright © 2017年 jseanj. All rights reserved.
//

#import "KVOCrashViewController.h"

@interface KVOCrashViewController ()

@end

@implementation KVOCrashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addObserver:self forKeyPath:@"backgroundColor" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context {
    NSLog(@"a");
}

- (void)dealloc {
    NSLog(@"KVOCrashViewController dealloc");

    [self.view removeObserver:self forKeyPath:@"backgroundColor"];
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
