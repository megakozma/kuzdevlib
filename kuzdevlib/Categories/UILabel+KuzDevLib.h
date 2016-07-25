//
//  UILabel+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (KuzDevLib)

- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text;
- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines: (NSInteger)numberOfLines;
- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines: (NSInteger)numberOfLines width: (CGFloat)width;


@end
