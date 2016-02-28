//
//  ViewLabel.m
//  eWatch
//
//  Created by Abraham on 9/13/15.
//  Copyright © 2015 Abraham. All rights reserved.
//

#import "ViewLabel.h"

@implementation ViewLabel

-(void)beginLode:(int)length{
    for (UIView *view in [self subviews]) {
        [view removeFromSuperview];
    }
    
    CGRect rect = self.frame;
    
    for (int i=0; i<length ; i++) {
        
        UIImageView *backImage = [[UIImageView alloc]initWithFrame:CGRectMake(i*rect.size.width/_length, 0, rect.size.width/length, rect.size.height)];
        backImage.image = [UIImage imageNamed:@"1.png"];
        [self addSubview:backImage];
        
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(i*rect.size.width/length, 0, rect.size.width/length, rect.size.height)];
        img.tag = length - i;
        [self addSubview:img];
        
    }
    
    self.backgroundColor = [UIColor clearColor];
}
//图片剪裁
-(UIImage *)lodeImageForNumber:(long long int)number{
    CGRect rect = CGRectMake(number*36, 0, 36, 48);
    UIImage *image = [UIImage imageNamed:@"2.png"];
    CGImageRef imageRef = CGImageCreateWithImageInRect(image.CGImage, rect);
    return [[UIImage alloc] initWithCGImage:imageRef];
}
-(void)showText:(int)number{
    self.number = number;
    int leng = self.length==0 ? 1:self.length;
    
    if(self.isInit == NO){
        self.isInit = YES;
        [self beginLode:leng];
    }
    
    for (int i=1; i<= self.length; i++) {
        UIImageView *image = (UIImageView* )[self viewWithTag:i];
        image.hidden = YES;
    }
    
    for (int i=1; i<leng; i++) {
        if(i==1){
            int _right = number%10;
            UIImageView *image = (UIImageView*) [self viewWithTag:i];
            image.hidden=NO;
            image.image = [self lodeImageForNumber:_right];
        }else{
            long long int JieCheng = 10;
            
            for (int j=1; j<i-1; j++) {
                JieCheng = JieCheng * 10;
            }
            
            long long int _life = number/JieCheng % 10;
            UIImageView *image = (UIImageView*)[self viewWithTag:i];
            
            if(i <= [[NSString stringWithFormat:@"%d",number]length]){
                image.hidden = NO;
            }
            image.image = [self lodeImageForNumber:_life];
        }
        
    }
}
@end
