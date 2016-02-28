//
//  ViewController.m
//  BookBrowser
//
//  Created by Abraham on 9/12/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [b1 setHidden:true];
    [b2 setHidden:true];
    [b3 setHidden:true];
    
    b2.transform = CGAffineTransformMakeRotation(15 *3.14159/180);
    
    [self performSelector:@selector(delayMethod) withObject:nil afterDelay:1.0f];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)delayMethod{
    [b1 setHidden:false];
    [b2 setHidden:false];
    [b3 setHidden:false];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)aa:(id)sender {
    b1.transform = CGAffineTransformMakeScale(1.2, 1.2);
    [self performSelector:@selector(showaa) withObject:self afterDelay:1.2f];
}
-(void) showaa{
    aaaa = [self.storyboard instantiateViewControllerWithIdentifier:@"aaaa"];
    CATransition *t = [CATransition animation];
    t.duration = 1;
    t.type = kCATransitionReveal;
    t.subtype = kCATransitionFromTop;
    
    [self.view addSubview:aaaa.view];
    [self.view.layer addAnimation:t forKey:nil];

}
- (IBAction)bb:(id)sender {
    b2.transform = CGAffineTransformMakeScale(1.5, 1.5);
    [self performSelector:@selector(showbb) withObject:nil afterDelay:1];
    
}
-(void)showbb{
    bbbb = [self.storyboard instantiateViewControllerWithIdentifier:@"bbbb"];
    CATransition *t = [CATransition animation];
    t.type = kCATransitionMoveIn;
    t.subtype = kCATransitionFromRight;
    [self.view addSubview:bbbb.view];
    [self.view.layer addAnimation:t forKey:nil];

}

- (IBAction)cc:(id)sender {
    b3.transform = CGAffineTransformMakeScale(1.5, 1.5);
    b3.transform = CGAffineTransformRotate(b3.transform, 15*3.14/180);
    [self performSelector:@selector(showcc) withObject:nil afterDelay:1.f];
}
-(void)showcc{
    cccc = [self.storyboard instantiateViewControllerWithIdentifier:@"cccc"];
    CATransition *t = [CATransition animation];
    t.type = kCATransitionReveal;
    t.subtype = kCATransitionFromTop;
    [self.view addSubview:cccc.view];
    [self.view.layer addAnimation:t forKey:nil];

}
@end
