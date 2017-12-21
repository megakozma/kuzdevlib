//
//  UITextField+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 26.07.17.
//  Copyright © 2017 kuz-dev.ru. All rights reserved.
//

#import "UITextField+KuzDevLib.h"

@implementation UITextField (KuzDevLib)

-(void) createToolBarWithRightText: (NSString *)rightText
{
    if (!rightText)
        rightText = NSLocalizedString(@"Готово", @"Готово");
    UIToolbar *keyboardToolbar = [[UIToolbar alloc] init];
    [keyboardToolbar setBarStyle:UIBarStyleBlackTranslucent];
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
