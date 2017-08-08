//
//  UILabel+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "UILabel+KuzDevLib.h"
#import "UIView+KuzDevLib.h"

@implementation UILabel (KuzDevLib)

- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines:(NSInteger)numberOfLines width:(CGFloat)width
{
    self = [super init];
    if (self) {
        self.textColor = textColor;
        self.font = font;
        self.text = text;
        self.numberOfLines = numberOfLines;
        if (width > 0)
        {
            [self setWidth:width];
            [self sizeToFit];
        }
    }
    return self;
}



-(instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines:(NSInteger)numberOfLines
{
    self = [super init];
    if (self) {
        self.textColor = textColor;
        self.font = font;
        self.text = text;
        self.numberOfLines = numberOfLines;
    }
    return self;

}

-(instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text
{
    return [self initWithTextColor:textColor font:font text:text numberOfLines:1];
}

- (instancetype)initWithAttributtedText:(NSAttributedString *)text
{
    return [self initWithAttributtedText:text numberOfLines:1];
}

-(instancetype)initWithAttributtedText:(NSAttributedString *)text numberOfLines:(NSInteger)numberOfLines
{
    self = [super init];
    if (self) {
        self.attributedText = text;
        self.numberOfLines = numberOfLines;
    }
    return self;
}



@end
