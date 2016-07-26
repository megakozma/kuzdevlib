//
//  KDLScrollTextsHelper.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 26.07.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KDLScrollTextsHelper : NSObject{
    UIView *currentText;
    UIView *parentView;
    CGFloat top;
    
    NSDictionary *userInfo;
}

-(id) initOnView: (UIView *)view;

-(void) keyboadShown: (NSNotification*) n;
- (void) keyboardHide: (NSNotification*) n;
-(void) setCurrentText: (UIView *)text;
-(void)update;


@end
