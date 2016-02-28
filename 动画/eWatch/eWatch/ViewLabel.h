//
//  ViewLabel.h
//  eWatch
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewLabel : UIView
@property(nonatomic, assign) int number;
@property(nonatomic, assign) int length;
@property(nonatomic,assign) Boolean isInit;
-(void)showText:(int)number;
@end
