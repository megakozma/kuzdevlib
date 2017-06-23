//
//  UIImage+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ImagePositionCender,
    ImagePositionLeftTop,
    
} KDLImagePosition;

@interface UIImage (KuzDevLib)

-(UIImage *)resizedImage:(CGSize)size;
- (UIImage *) resizedImageByMagick: (NSString *) spec;
- (UIImage *) resizedImageByWidth:  (NSUInteger) width;
- (UIImage *) resizedImageByHeight: (NSUInteger) height;
- (UIImage *) resizedImageWithMaximumSize: (CGSize) size;
- (UIImage *) resizedImageWithMinimumSize: (CGSize) size;


-(UIImage *)imageOnImage:(UIImage *)image position: (KDLImagePosition)position;
+(UIImage *)imageFromColor:(UIColor *)color size: (CGSize)size;


+(UIImage *)mainScreenShotFromApp: (UIApplication *)application;
+(UIImage *)screenShotFromView: (UIView *)view;
+(UIImage *)screenShotFromView:(UIView *)view inRect: (CGRect)frame;
-(UIImage *)rotateAt: (UIImageOrientation) orientation;



@end
