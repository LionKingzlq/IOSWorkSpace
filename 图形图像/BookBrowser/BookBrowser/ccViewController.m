//
//  ccViewController.m
//  BookBrowser
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import "ccViewController.h"

@interface ccViewController ()

@end

@implementation ccViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)change:(id)sender{
    NSInteger next = [pagecontrol currentPage];
    switch (next) {
        case 1:
            [iv setImage:[UIImage imageNamed:@"8.jpg"]];
            break;
        case 2:
            [iv setImage:[UIImage imageNamed:@"2.jpg"]];
            break;
        case 3:
            [iv setImage:[UIImage imageNamed:@"3.jpg"]];
            break;
        case 4:
            [iv setImage:[UIImage imageNamed:@"4.jpg"]];
            break;
        case 5:
            [iv setImage:[UIImage imageNamed:@"5.jpg"]];
            break;
        case 6:
            [iv setImage:[UIImage imageNamed:@"6.jpg"]];
            break;
        default:
            break;
    }

    [UIView beginAnimations:@"" context:nil];
    [UIView setAnimationDuration:2];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:iv cache:YES];
    [UIView commitAnimations];
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
