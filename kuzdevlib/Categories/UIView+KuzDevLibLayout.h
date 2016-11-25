//
//  UIViewController+KuzDevLibLayout.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.11.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

#define KDL_LAYOUT_DASH -MAXFLOAT
#define KDL_LAYOUT_ALLDASH_INSET UIEdgeInsetsMake(KLD_LAYOUT_DASH, KLD_LAYOUT_DASH, KLD_LAYOUT_DASH, KLD_LAYOUT_DASH)


@interface UIView (KuzDevLibLayout)

-(void)forLayout;
-(void)layoutToVerCenterFixesSize: (CGSize)size right: (CGFloat)right;
-(void)layoutToHorzCenterFixesSize:(CGSize)size top:(CGFloat)top;
-(void)layoutToCenterFixesSize:(CGSize)size;
-(void)layoutFullScreen;
-(void)layoutVerCenter;
-(void)layoutHorzCenter;
-(void)layoutAtInsets: (UIEdgeInsets)insets;

@end
