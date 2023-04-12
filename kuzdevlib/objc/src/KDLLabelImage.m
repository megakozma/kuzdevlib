//
//  KDLLabelImage.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 09.08.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "KDLLabelImage.h"
#import "UIView+KuzDevLib.h"
#import "UIView+KuzDevLibLayout.h"
#import "UILabel+KuzDevLib.h"

@implementation KDLLabelImage

- (instancetype)initAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor maxWidth: (CGFloat)width
{
    self = [super init];
    if (self) {
        [self createViewAtImage:image antText:text font:font textColor:textColor maxWidth:width];
    }
    return self;
}

- (instancetype)initAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor
{
    self = [super init];
    if (self) {
        [self createLayoutViewAtImage:image antText:text font:font textColor:textColor];
    }
    return self;
}

-(void)createLayoutViewAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor
{
    
    _imgView = [[UIImageView alloc] initWithImage:image];
    self.imgView.userInteractionEnabled = YES;
    [self addSubview:self.imgView];
    
    _label = [[UILabel alloc] initWithTextColor:textColor
                                           font:font
                                           text:text];
    [_label setLeftPos:[self.imgView leftIndent]+10];
    _label.numberOfLines = 0;
    [self addSubview:_label];
    _label.userInteractionEnabled = YES;
    
    
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj forLayout];
    }];
    
    
    NSDictionary *metrics = @{@"img_width":@(image.size.width),
                              @"img_height":@(image.size.height),};
    NSDictionary *views = NSDictionaryOfVariableBindings(_label, _imgView);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"|[_imgView(img_width)]-[_label]|"
                                                                 options:0
                                                                 metrics:metrics
                                                                   views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_imgView(img_height)]"
                                                                 options:0
                                                                 metrics:metrics
                                                                   views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_label]|"
                                                                 options:0
                                                                 metrics:metrics
                                                                   views:views]];
    [_imgView layoutVerCenter];
    
}


-(void)createViewAtImage: (UIImage *)image antText: (NSString *)text font: (UIFont *)font textColor: (UIColor *)textColor maxWidth: (CGFloat)width
{
    
    _imgView = [[UIImageView alloc] initWithImage:image];
    _imgView.userInteractionEnabled = YES;
    [self addSubview:_imgView];
    
    _label = [[UILabel alloc] initWithTextColor:textColor
                                          font:font
                                          text:text];
    [_label setLeftPos:[_imgView leftIndent]+10];
    if (width > 0)
        [_label setWidth: width - _label.frame.origin.x];
    else
        [_label setWidth:0];
    _label.numberOfLines = 0;
    [_label sizeToFit];
    [self addSubview:_label];
    _label.userInteractionEnabled = YES;
    
    
    
    CGFloat height = _imgView.frame.size.height > _label.frame.size.height ?
    _imgView.frame.size.height :
    _label.frame.size.height;
    
    [self setSize:CGSizeMake([_label leftIndent], height)];
    
    [_label alignToVerCenter];
    [_imgView alignToVerCenter];
    
}

@end
