//
//  ViewController.h
//  eWatch
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewLabel.h"

@interface ViewController : UIViewController{
    IBOutlet ViewLabel *vl;
    NSTimer *timer;
    int i;
}


@end

