//
//  UILabel+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (KuzDevLib)

- (instancetype)initWithAttributtedText:(NSAttributedString *)text;
- (instancetype)initWithAttributtedText:(NSAttributedString *)text numberOfLines: (NSInteger)numberOfLines;

- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text;
- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines: (NSInteger)numberOfLines;
- (instancetype)initWithTextColor:(UIColor *)textColor font:(UIFont *)font text:(NSString *)text numberOfLines: (NSInteger)numberOfLines width: (CGFloat)width DEPRECATED_MSG_ATTRIBUTE("refactor. use UITableViewCell+VB");


@end
