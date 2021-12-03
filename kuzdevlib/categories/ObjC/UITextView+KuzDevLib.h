//
//  UITextView+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 02.12.2017.
//  Copyright © 2017 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (KuzDevLib)

-(void) createToolBarWithRightText: (nullable NSString *)rightText backgroundColor:(nullable UIColor *)backColor textColor:(nullable UIColor *)textColor;

@end
