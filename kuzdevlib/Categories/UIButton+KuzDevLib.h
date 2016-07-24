//
//  UIButton+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 24.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (KuzDevLib)

-(instancetype)initSelectedWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font image:(UIImage *)image imageSelected:(UIImage *)imageSelected andTappedMethod:(SEL)action andTarget:(id)target;
-(instancetype)initWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font image:(UIImage *)image imagePressed:(UIImage *)imagePressed andTappedMethod:(SEL)action andTarget:(id)target;

-(instancetype)initWithImage: (UIImage *)image andTappedMethod:(SEL)action andTarget:(id)target;
-(instancetype)initWithImage: (UIImage *)image title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font andTappedMethod:(SEL)action andTarget:(id)target;


- (void)centerVerticallyWithPadding:(float)padding;
- (void)centerVertically;


@end
