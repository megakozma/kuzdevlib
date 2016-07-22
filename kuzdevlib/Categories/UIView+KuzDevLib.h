//
//  UIView+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 22.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (KuzDevLib)

@property (retain) NSString *tagString;
@property (retain) NSObject *tagObject;

-(void) setRight: (CGFloat)right;
-(void) setBottom: (CGFloat)bottom;
-(void) setHeight:(CGFloat)height;
-(void) setTop:(CGFloat)top;
-(void) setLeft:(CGFloat)left;
-(void) setWidth:(CGFloat)width;
-(void) setPoint: (CGPoint)point;
-(void) setSize: (CGSize)size;
-(CGFloat) leftIndent;
-(CGFloat) topIndent;
-(CGRect) frameInView: (UIView *)inView;

-(void)alignToCenter;
-(void)alignToHorzCenter;
-(void)alignToVerCenter;


-(void)forLayout;
-(void)layoutToVerCenterFixesSize: (CGSize)size right: (CGFloat)right;
-(void)layoutToHorzCenterFixesSize:(CGSize)size top:(CGFloat)top;
-(void)layoutToCenterFixesSize:(CGSize)size;
-(void)layoutFullScreen;

@end
