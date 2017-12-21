//
//  NSAttributedString+SM.h
//  salam_mobile
//
//  Created by Михаил Кузеванов on 10.10.15.
//  Copyright © 2015 kuz-dev.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSAttributedString (SM)

+(NSAttributedString *)smCombinedAtFirstStr: (NSString *)str1
                                firstFont: (UIFont *)font1
                           firstTextColor: (UIColor *)color1
                                secondStr: (NSString *)str2
                               secondFont: (UIFont *)font2
                          secondTextColor: (UIColor *)color2;
+(NSAttributedString *)smCombinedNewLineAtFirstStr: (NSString *)str1
                                         firstFont: (UIFont *)font1
                                    firstTextColor: (UIColor *)color1
                                         secondStr: (NSString *)str2
                                        secondFont: (UIFont *)font2
                                   secondTextColor: (UIColor *)color2;
@end
