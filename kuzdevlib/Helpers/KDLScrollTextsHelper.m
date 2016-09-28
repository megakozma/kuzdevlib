//
//  KDLScrollTextsHelper.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 26.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "KDLScrollTextsHelper.h"

#define DURATION 0.3

@implementation KDLScrollTextsHelper

-(id)initOnView:(UIView *)view
{
    self = [super init];
    if (self) {
        parentView = view;
        
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboadShown:)
                                                     name:UIKeyboardWillShowNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(keyboardHide:)
                                                     name:UIKeyboardWillHideNotification
                                                   object:nil];
        NSLog(@"%@", NSStringFromClass([view class]));
        top = MAXFLOAT;
    }
    return self;
}

-(void)setCurrentText:(UIView *)text
{
    currentText = text;
}

- (void) keyboadShown:(NSNotification *)n
{
    userInfo = n.userInfo;
    [self update];
}

-(void)update
{
    NSLog(@"SMScrollTexts.keyboardShown");
    if (!currentText)
    {
        NSLog(@"SMScrollTexts.keyboardShown: currentText is NULL");
        return;
    }
    CGRect r = [[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
    r = [parentView convertRect:r fromView:nil];
    CGRect f = [currentText convertRect:currentText.bounds toView:parentView];
    CGFloat y = CGRectGetMaxY(f) + r.size.height - parentView.bounds.size.height + 5;
    if (r.origin.y >= CGRectGetMaxY(f))
        return;
    
    if (top == MAXFLOAT)
        top = parentView.frame.origin.y;
    [UIView animateWithDuration: DURATION
                          delay: 0.0
                        options: UIViewAnimationOptionCurveEaseOut
     
                     animations:^{
                         CGRect frame = parentView.frame;
                         frame.origin.y -= y;
                         parentView.frame = frame;
                     }
     
                     completion:^(BOOL finished) {
                     }];
    
}



- (void) keyboardHide: (NSNotification*) n
{
    [UIView animateWithDuration: DURATION
                          delay: 0.0
                        options: UIViewAnimationOptionCurveEaseOut
     
                     animations:^{
                         if (top != MAXFLOAT)
                         {
                             CGRect frame = parentView.frame;
                             frame.origin.y =  top;
                             parentView.frame = frame;
                         }
                         
                     }
     
                     completion:^(BOOL finished) {
                         
                     }];
    NSLog(@"SMScrollTexts.keyboardHide");
    
}

-(void)dealloc
{
    NSLog(@"SMScrollTexts.dealloc");
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillShowNotification
                                                  object:nil];
    // unregister for keyboard notifications while not visible.
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:UIKeyboardWillHideNotification
                                                  object:nil];
}


@end
