//
//  UIViewController+KuzDevLibLayout.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 25.11.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "UIView+KuzDevLibLayout.h"

@implementation UIView (KuzDevLibLayout)


+(CGFloat)kdlLayoutDash
{
    return KDL_LAYOUT_DASH;
}

+(UIEdgeInsets)kdlLayoutAllDashInset
{
    return KDL_LAYOUT_ALLDASH_INSET;
}

-(void)forLayout
{
    self.translatesAutoresizingMaskIntoConstraints = NO;
}

-(void)forLayoutSubviews
{
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj forLayout];
    }];
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

-(void)layoutAtInsets:(UIEdgeInsets)insets
{
    if (!self.superview)
        [NSException raise:@"layoutAtInsets" format:@"superview is nil"];
    [self forLayout];
    UIView *view = self;
    NSDictionary *views = NSDictionaryOfVariableBindings(view);
    NSDictionary *metrics = @{@"top":@(insets.top),
                              @"bottom":@(insets.bottom),
                              @"left":@(insets.left),
                              @"right":@(insets.right)
                              };
    
    NSMutableString *hFormat = [NSMutableString stringWithString:@"[view]"];
    if (insets.left == KDL_LAYOUT_DASH)
        [hFormat insertString:@"|-" atIndex:0];
    else
        [hFormat insertString:@"|-left-" atIndex:0];
    
    if (insets.right == KDL_LAYOUT_DASH)
        [hFormat appendString:@"-|"];
    else
        [hFormat appendString:@"-right-|"];
    
    
    NSMutableString *vFormat = [NSMutableString stringWithString:@"[view]"];
    if (insets.top == KDL_LAYOUT_DASH)
        [vFormat insertString:@"|-" atIndex:0];
    else
        [vFormat insertString:@"|-top-" atIndex:0];
    
    if (insets.bottom == KDL_LAYOUT_DASH)
        [vFormat appendString:@"-|"];
    else
        [vFormat appendString:@"-bottom-|"];
    
    [vFormat insertString:@"V:" atIndex:0];
    
    
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:hFormat
                                                                           options:0
                                                                           metrics:metrics
                                                                             views:views]];
    [self.superview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vFormat
                                                                           options:0
                                                                           metrics:metrics
                                                                             views:views]];
    
}

@end
