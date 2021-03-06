//
//  KuzDev.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 22.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//


//RGB color macro
#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//RGB color macro with alpha
#define UIColorFromRGBWithAlpha(rgbValue,a) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:a]


#import "UIView+KuzDevLibLayout.h"
#import "UIView+KuzDevLib.h"
#import "UIButton+KuzDevLib.h"
#import "UILabel+KuzDevLib.h"
#import "UIImage+KuzDevLib.h"
#import "UIColor+KuzDevLib.h"
#import "NSAttributedString+SM.h"
#import "NSDate+KuzDevLib.h"
#import "UITableView+KuzDevLib.h"
#import "UITextField+KuzDevLib.h"
#import "UITextView+KuzDevLib.h"


#import "KDLLabelImage.h"

#import "KDLScrollTextsHelper.h"

