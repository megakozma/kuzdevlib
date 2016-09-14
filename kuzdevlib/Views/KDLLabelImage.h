//
//  KDLLabelImage.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 09.08.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KDLLabelImage : UIView

- (instancetype)initAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor maxWidth: (CGFloat)width;
- (instancetype)initAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor;

@property (readonly) UIImageView *imgView;
@property (readonly) UILabel *label;

@end
