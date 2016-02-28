//
//  ViewController.h
//  BookBrowser
//
//  Created by Abraham on 9/12/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "aaViewController.h"
#import "bbViewController.h"
#import "ccViewController.h"

@interface ViewController : UIViewController{
    
    IBOutlet UIButton *b1;
    IBOutlet UIButton *b2;
    IBOutlet UIButton *b3;
    
    aaViewController *aaaa;
    bbViewController *bbbb;
    ccViewController *cccc;
}

- (IBAction)aa:(id)sender;
- (IBAction)bb:(id)sender;
- (IBAction)cc:(id)sender;

@end

