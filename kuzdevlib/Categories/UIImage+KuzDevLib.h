//
//  UIImage+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (KuzDevLib)

-(UIImage *)resizedImage:(CGSize)size;
- (UIImage *) resizedImageByMagick: (NSString *) spec;
- (UIImage *) resizedImageByWidth:  (NSUInteger) width;
- (UIImage *) resizedImageByHeight: (NSUInteger) height;
- (UIImage *) resizedImageWithMaximumSize: (CGSize) size;
- (UIImage *) resizedImageWithMinimumSize: (CGSize) size;


-(UIImage *)imageOnImage:(UIImage *)image;
+(UIImage *)imageFromColor:(UIColor *)color size: (CGSize)size;


+(UIImage *)mainScreenShot;
+(UIImage *)screenShotFromView: (UIView *)view;
-(UIImage *)rotateAt: (UIImageOrientation) orientation;



@end
