//
//  bbViewController.h
//  BookBrowser
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bbViewController : UIViewController{
    IBOutlet UIImageView *iv;
    IBOutlet UIPageControl *pagecontrol;
}
-(IBAction)change:(id)sender;

@end
