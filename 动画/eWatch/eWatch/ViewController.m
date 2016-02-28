//
//  ViewController.m
//  eWatch
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    i = 9999;
    timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(show) userInfo:nil repeats:YES];
    vl.length = 4;
    [vl showText:1];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)show{
    i--;
    printf("1");
    [vl showText:vl.number +1];
    if(i==0){
        [timer invalidate];
    }
}
@end
