//
//  UIButton+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 24.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (KuzDevLib)

-(nonnull instancetype)initSelectedWithTitle:(NSString *_Nullable)title
                          titleColor:(UIColor *_Nullable)titleColor
                           titleFont:(UIFont *_Nullable)font
                           backImage:(UIImage *_Nullable)image
                   backImageSelected:(UIImage *_Nullable)imageSelected
                     andTappedMethod:(SEL _Nullable)action
                           andTarget:(id _Nullable)target ;

-(nonnull instancetype)initWithTitle:(NSString *_Nullable)title
                  titleColor:(UIColor *_Nullable)titleColor
                   titleFont:(UIFont *_Nullable)font
                   backImage:(UIImage *_Nullable)image
            backImagePressed:(UIImage *_Nullable)imagePressed
             andTappedMethod:(SEL _Nullable)action
                   andTarget:(id _Nullable)target;


-(nonnull instancetype)initWithImage: (UIImage *_Nullable)image
             andTappedMethod:(SEL _Nullable)action
                   andTarget:(id _Nullable)target;
-(nonnull instancetype)initWithImage: (UIImage *_Nullable)image
                       title:(NSString *_Nullable)title
                  titleColor:(UIColor *_Nullable)titleColor
                   titleFont:(UIFont *_Nullable)font
             andTappedMethod:(SEL _Nullable)action
                   andTarget:(id _Nullable)target;


- (void)centerVerticallyWithPadding:(float)padding;
- (void)centerVertically;


-(nonnull instancetype)initSelectedWithTitle:(NSString *_Nullable)title
                          titleColor:(UIColor *_Nullable)titleColor
                           titleFont:(UIFont *_Nullable)font
                               image:(UIImage *_Nullable)image
                       imageSelected:(UIImage *_Nullable)imageSelected
                     andTappedMethod:(SEL _Nullable)action
                           andTarget:(id _Nullable)target DEPRECATED_MSG_ATTRIBUTE("USE initSelectedWithTitle: titleColor: titleFont: backImage");

-(nonnull instancetype)initWithTitle:(NSString *_Nullable)title
                  titleColor:(UIColor *_Nullable)titleColor
                   titleFont:(UIFont *_Nullable)font
                       image:(UIImage *_Nullable)image
                imagePressed:(UIImage *_Nullable)imagePressed
             andTappedMethod:(SEL _Nullable)action
                   andTarget:(id _Nullable)target DEPRECATED_MSG_ATTRIBUTE("USE initWithTitle: titleColor: titleFont: backImage");


@end
