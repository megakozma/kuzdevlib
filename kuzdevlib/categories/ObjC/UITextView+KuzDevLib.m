//
//  UITextView+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 02.12.2017.
//  Copyright © 2017 kuz-dev.ru. All rights reserved.
//

#import "UITextView+KuzDevLib.h"

@implementation UITextView (KuzDevLib)

-(void)createToolBarWithRightText:(NSString *)rightText backgroundColor:(UIColor *)backColor textColor:(UIColor *)textColor{
    
    if (!rightText)
        rightText = NSLocalizedString(@"Готово", @"Готово");
    UIToolbar *keyboardToolbar = [[UIToolbar alloc] init];
    [keyboardToolbar setBarStyle:UIBarStyleDefault];
    [keyboardToolbar setTintColor:textColor];
    [keyboardToolbar setBarTintColor:backColor];
    [keyboardToolbar sizeToFit];
    
    UIBarButtonItem *extraSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem *aceptar = [[UIBarButtonItem alloc] initWithTitle: rightText style:UIBarButtonItemStyleDone target:self action:@selector(buttonTap:)];
    
    [keyboardToolbar setItems:[[NSArray alloc] initWithObjects: extraSpace, aceptar, nil]];
    
    self.inputAccessoryView = keyboardToolbar;
}


-(void)buttonTap: (id)sender{
    [self endEditing:YES];
}

@end
