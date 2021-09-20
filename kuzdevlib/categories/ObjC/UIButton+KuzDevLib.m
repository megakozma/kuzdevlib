//
//  UIButton+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 24.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "UIButton+KuzDevLib.h"
#import "UIView+KuzDevLib.h"

@implementation UIButton (KuzDevLib)

-(instancetype)initSelectedWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font backImage:(UIImage *)image backImageSelected:(UIImage *)imageSelected andTappedMethod:(SEL)action andTarget:(id)target
{
    self = [self init];
    if (self) {
        [self setTitle: title forState: UIControlStateNormal];
        [self addTarget:target
                 action:action
       forControlEvents:UIControlEventTouchUpInside];
        [self setBackgroundImage: image forState:UIControlStateNormal];
        [self setBackgroundImage: imageSelected forState:UIControlStateSelected];
        [self setSize:image.size];
        self.titleLabel.font = font;
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        self.showsTouchWhenHighlighted = YES;
        
    }
    return self;
}

-(instancetype)initWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font backImage:(UIImage *)image backImagePressed:(UIImage *)imagePressed andTappedMethod:(SEL)action andTarget:(id)target
{
    self = [self init];
    if (self) {
        [self setTitle: title forState: UIControlStateNormal];
        [self addTarget:target
                 action:action
       forControlEvents:UIControlEventTouchUpInside];
        [self setBackgroundImage: image forState:UIControlStateNormal];
        if (imagePressed)
        {
            [self setBackgroundImage: imagePressed forState:UIControlStateHighlighted];
            [self setBackgroundImage: imagePressed forState:UIControlStateSelected];
        }
        [self setSize:image.size];
        self.titleLabel.font = font;
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        self.showsTouchWhenHighlighted = YES;
    }
    return self;
}

-(instancetype)initWithImage:(UIImage *)image andTappedMethod:(SEL)action andTarget:(id)target
{
    return [self initWithImage:image title:NULL titleColor:NULL titleFont:NULL andTappedMethod:action andTarget:target];
}

-(instancetype)initWithImage:(UIImage *)image title:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font andTappedMethod:(SEL)action andTarget:(id)target
{
    self = [self init];
    if (self) {
        [self addTarget:target
                 action:action
       forControlEvents:UIControlEventTouchUpInside];
        [self setImage: image forState:UIControlStateNormal];
        self.titleLabel.font = font;
        [self setTitleColor:titleColor forState:UIControlStateNormal];
        [self setTitle: title forState: UIControlStateNormal];
        self.showsTouchWhenHighlighted = YES;
    }
    return self;
}

- (void)centerVerticallyWithPadding:(float)padding
{
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    CGFloat left = 0;
    if (self.bounds.size.width > 0){
        left = (self.bounds.size.width / 2) - (imageSize.width / 2) -2.5;
    }
    
    CGFloat totalHeight = (imageSize.height + titleSize.height + padding);
    
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height),
                                            left,
                                            0.0f,
                                            0);
    
    self.titleEdgeInsets = UIEdgeInsetsMake(0.0f,
                                            - imageSize.width,
                                            - (totalHeight - titleSize.height),
                                            0.0f);
    
}


- (void)centerVertically
{
    const CGFloat kDefaultPadding = 6.0f;
    
    [self centerVerticallyWithPadding:kDefaultPadding];
}

#pragma mark -  deprecated

-(instancetype)initWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font image:(UIImage *)image imagePressed:(UIImage *)imagePressed andTappedMethod:(SEL)action andTarget:(id)target{
    return [self initWithTitle:title titleColor:titleColor titleFont:font backImage:image backImagePressed:imagePressed andTappedMethod:action andTarget:target];
}

-(instancetype)initSelectedWithTitle:(NSString *)title titleColor:(UIColor *)titleColor titleFont:(UIFont *)font image:(UIImage *)image imageSelected:(UIImage *)imageSelected andTappedMethod:(SEL)action andTarget:(id)target{
    return [self initSelectedWithTitle:title titleColor:titleColor titleFont:font backImage:image backImageSelected:imageSelected andTappedMethod:action andTarget:target];
}

@end
