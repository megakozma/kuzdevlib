//
//  UIView+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 22.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "UIView+KuzDevLib.h"


#import <objc/runtime.h>

static const void *TagStringKey = &TagStringKey;
static const void *TagObjectKey = &TagObjectKey;


@implementation UIView (KuzDevLib)

-(NSString *)tagString
{
    return objc_getAssociatedObject(self, TagStringKey);
}

-(void)setTagString:(NSString *)tagString
{
    objc_setAssociatedObject(self, TagStringKey, tagString, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(NSObject *)tagObject
{
    return objc_getAssociatedObject(self, TagObjectKey);
}

-(void)setTagObject:(NSObject *)tagObject
{
    objc_setAssociatedObject(self, TagObjectKey, tagObject, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

-(void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

-(void)setLeft:(CGFloat)left
{
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}


-(void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

-(void)setPoint:(CGPoint)point
{
    CGRect frame = self.frame;
    frame.origin = point;
    self.frame = frame;
}

-(CGFloat)leftIndent
{
    return self.frame.size.width + self.frame.origin.x;
}

-(CGFloat)topIndent
{
    return self.frame.size.height + self.frame.origin.y;
}

-(CGRect)frameInView:(UIView *)inView
{
    CGRect f = self.frame;
    UIView *superView = self.superview;
    while (superView != inView) {
        CGRect frameSuperView = superView.frame;
        f.origin.y += frameSuperView.origin.y;
        f.origin.x += frameSuperView.origin.x;
        superView = superView.superview;
    }
    return f;
}

-(void)setRight:(CGFloat)right
{
    if (!self.superview)
        [NSException raise:@"setRight" format:@"superview is nil"];
    CGRect frame = self.frame;
    CGRect superFrame = self.superview.frame;
    frame.origin.x = superFrame.size.width - frame.size.width - right;
    self.frame = frame;
}

-(void)setBottom:(CGFloat)bottom
{
    if (!self.superview)
        [NSException raise:@"setRight" format:@"superview is nil"];
    CGRect frame = self.frame;
    CGRect superFrame = self.superview.frame;
    frame.origin.y = superFrame.size.height - frame.size.height - bottom;
    self.frame = frame;
}

-(void)alignToCenter
{
    [self alignToVerCenter];
    [self alignToHorzCenter];
}


-(void)alignToHorzCenter
{
    if (!self.superview)
        [NSException raise:@"PCViewHelper.viewOnHorzCenter" format:@"superview is nil"];
    CGRect frame = self.frame;
    frame.origin.x = (self.superview.frame.size.width / 2) - (self.frame.size.width / 2);
    self.frame = frame;
}


-(void)alignToVerCenter
{
    if (!self.superview)
        [NSException raise:@"PCViewHelper.viewOnVerCenter" format:@"superview is nil"];
    CGRect frame = self.frame;
    CGRect superFrame = self.superview.frame;
    frame.origin.y = (superFrame.size.height / 2) - (frame.size.height / 2);
    self.frame = frame;
}


-(void) roundCornerWithRadius:(CGFloat) radius borderColor:(UIColor *) color borderWidth:(CGFloat) width
{
    [self.layer setBorderColor: [color CGColor]];
    self.layer.borderWidth = width;
    [self.layer setCornerRadius: radius];
    //    [v.layer setMasksToBounds:YES];
}


#pragma mark - layout

-(void)forLayout
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
}

-(void)layoutToHorzCenterFixesSize:(CGSize)size top:(CGFloat)top
{
    [self forLayout];
    
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:self
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:NULL
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:size.width];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:NULL
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:size.height];
    
    [self addConstraints:[NSArray arrayWithObjects:width, height, nil]];
    
    NSLayoutConstraint *rConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                   attribute:NSLayoutAttributeTop
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.superview
                                                                   attribute:NSLayoutAttributeTop
                                                                  multiplier:1
                                                                    constant:top];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                     attribute:NSLayoutAttributeCenterX
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.superview
                                                                     attribute:NSLayoutAttributeCenterX
                                                                    multiplier:1
                                                                      constant:0];
    [self.superview addConstraints:[NSArray arrayWithObjects:rConstraint, topConstraint,  nil]];
    
}

-(void)layoutToVerCenterFixesSize:(CGSize)size right:(CGFloat)right
{
    [self forLayout];
    
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:self
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:NULL
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:size.width];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:NULL
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:size.height];
    
    [self addConstraints:[NSArray arrayWithObjects:width, height, nil]];
    
    NSLayoutConstraint *rConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                   attribute:NSLayoutAttributeRight
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.superview
                                                                   attribute:NSLayoutAttributeRight
                                                                  multiplier:1
                                                                    constant:-1*right];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                     attribute:NSLayoutAttributeCenterY
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.superview
                                                                     attribute:NSLayoutAttributeCenterY
                                                                    multiplier:1
                                                                      constant:0];
    [self.superview addConstraints:[NSArray arrayWithObjects:rConstraint, topConstraint,  nil]];
    
}



-(void)layoutToCenterFixesSize:(CGSize)size
{
    [self forLayout];
    
    NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:self
                                                             attribute:NSLayoutAttributeWidth
                                                             relatedBy:NSLayoutRelationEqual
                                                                toItem:NULL
                                                             attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1
                                                              constant:size.width];
    
    NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:NULL
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:size.height];
    
    [self addConstraints:[NSArray arrayWithObjects:width, height, nil]];
    
    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                   attribute:NSLayoutAttributeCenterX
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.superview
                                                                   attribute:NSLayoutAttributeCenterX
                                                                  multiplier:1
                                                                    constant:0];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint constraintWithItem:self
                                                                     attribute:NSLayoutAttributeCenterY
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.superview
                                                                     attribute:NSLayoutAttributeCenterY
                                                                    multiplier:1
                                                                      constant:0];
    [self.superview addConstraints:[NSArray arrayWithObjects:xConstraint, topConstraint,  nil]];
    
}

-(void)layoutFullScreen
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:self
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.superview
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0];
    NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.superview
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0];
    NSLayoutConstraint *bottom = [NSLayoutConstraint constraintWithItem:self
                                                              attribute:NSLayoutAttributeBottom
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.superview
                                                              attribute:NSLayoutAttributeBottom
                                                             multiplier:1
                                                               constant:0];
    
    NSLayoutConstraint *rght = [NSLayoutConstraint constraintWithItem:self
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.superview
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0];
    [self.superview addConstraints:[NSArray arrayWithObjects:bottom, top, left, rght, nil]];
}


-(void)layoutVerCenter
{
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self.superview
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1
                                                      constant:0]];
}


-(void)layoutHorzCenter
{
    [self.superview addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                               attribute:NSLayoutAttributeCenterX
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:self.superview
                                                               attribute:NSLayoutAttributeCenterX
                                                              multiplier:1
                                                                constant:0]];
}

@end
