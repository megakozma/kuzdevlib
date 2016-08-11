//
//  NSAttributedString+SM.m
//  salam_mobile
//
//  Created by Михаил Кузеванов on 10.10.15.
//  Copyright © 2015 kuz-dev.ru. All rights reserved.
//

#import "NSAttributedString+SM.h"

@implementation NSAttributedString (SM)

+(NSAttributedString *)smCombinedAtFirstStr:(NSString *)str1 firstFont:(UIFont *)font1 firstTextColor:(UIColor *)color1 secondStr:(NSString *)str2 secondFont:(UIFont *)font2 secondTextColor:(UIColor *)color2
{
    if (!str1)
        str1 = @"";
    if (!str2)
        str2 = @"";
    NSDictionary *attrStr1 = @{
                               NSFontAttributeName: font1,
                               NSForegroundColorAttributeName : color1
                               };
    NSDictionary *attrStr2 = @{
                               NSFontAttributeName: font2,
                               NSForegroundColorAttributeName : color2
                               };
    NSMutableAttributedString *aStr1 = [[NSMutableAttributedString alloc] initWithString:str1 attributes:attrStr1];
    NSAttributedString *aStr2 = [[NSAttributedString alloc] initWithString:str2 attributes:attrStr2];
    [aStr1 appendAttributedString:aStr2];
    return aStr1;
}

+(NSAttributedString *)smCombinedNewLineAtFirstStr:(NSString *)str1 firstFont:(UIFont *)font1 firstTextColor:(UIColor *)color1 secondStr:(NSString *)str2 secondFont:(UIFont *)font2 secondTextColor:(UIColor *)color2
{
    str2 = [NSString stringWithFormat:@"\n%@",str2];
    return [NSAttributedString smCombinedAtFirstStr:str1
                                          firstFont:font1
                                     firstTextColor:color1
                                          secondStr:str2
                                         secondFont:font2
                                    secondTextColor:color2];
}

@end
