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

-(void) setRightPos: (CGFloat)right;
-(void) setBottom: (CGFloat)bottom;
-(void) setHeight:(CGFloat)height;
-(void) setTop:(CGFloat)top;
-(void) setLeft:(CGFloat)left;
-(void) setWidth:(CGFloat)width;
-(void) setPoint: (CGPoint)point;
-(void) setSize: (CGSize)size;

-(void) roundCornerWithRadius:(CGFloat) radius borderColor:(UIColor *) color borderWidth:(CGFloat) width;

-(CGFloat) leftIndent;
-(CGFloat) topIndent;
-(CGRect) frameInView: (UIView *)inView;



-(void)alignToCenter;
-(void)alignToHorzCenter;
-(void)alignToVerCenter;




@end
