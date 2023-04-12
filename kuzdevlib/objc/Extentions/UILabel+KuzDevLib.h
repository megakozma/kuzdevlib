//
//  UILabel+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (KuzDevLib)

- (nonnull instancetype)initWithAttributtedText:(NSAttributedString *_Nullable)text;
- (nonnull instancetype)initWithAttributtedText:(NSAttributedString *_Nullable)text numberOfLines: (NSInteger)numberOfLines;

- (nonnull instancetype)initWithTextColor:(UIColor *_Nonnull)textColor font:(UIFont *_Nonnull)font text:(NSString *_Nullable)text;
- (nonnull instancetype)initWithTextColor:(UIColor *_Nonnull)textColor font:(UIFont *_Nonnull)font text:(NSString *_Nullable)text numberOfLines: (NSInteger)numberOfLines;

- (nonnull instancetype)initWithTextColor:(UIColor *_Nonnull)textColor font:(UIFont *_Nonnull)font text:(NSString *_Nullable)text numberOfLines: (NSInteger)numberOfLines width: (CGFloat)width DEPRECATED_MSG_ATTRIBUTE("old procedure");


@end
