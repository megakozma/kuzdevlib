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

-(void) setRight: (CGFloat)right DEPRECATED_MSG_ATTRIBUTE("use setRightPos");
-(void) setBottom: (CGFloat)bottom DEPRECATED_MSG_ATTRIBUTE("use setBottomPos");
-(void) setTop:(CGFloat)top DEPRECATED_MSG_ATTRIBUTE("use setTopPos");
-(void) setLeft:(CGFloat)left DEPRECATED_MSG_ATTRIBUTE("use setLeftPos");


-(void) setRightPos: (CGFloat)right;
-(void) setBottomPos: (CGFloat)bottom;
-(void) setTopPos:(CGFloat)top;
-(void) setLeftPos:(CGFloat)left;

-(void) setHeight:(CGFloat)height;
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
