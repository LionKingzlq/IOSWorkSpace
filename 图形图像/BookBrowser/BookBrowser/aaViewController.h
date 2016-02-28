//
//  aaViewController.h
//  BookBrowser
//
//  Created by Abraham on 9/12/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface aaViewController : UIViewController{
    IBOutlet UIImageView *iv;
    IBOutlet UIPageControl *pagecontrol;
}
-(IBAction)change:(id)sender;
- (IBAction)return:(id)sender;

@end
