//
//  UITextField+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 26.07.17.
//  Copyright © 2017 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (KuzDevLib)

-(void) createToolBarWithRightText: (nullable NSString *)rightText backgroundColor:(nullable UIColor *)backColor textColor:(nullable UIColor *)textColor;

@end
