//
//  UITableView+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 07.10.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "UITableView+KuzDevLib.h"

@implementation UITableView (KuzDevLib)

- (void)contentToCenter
{
    CGSize contentSize = self.contentSize;
    CGSize boundsSize = self.bounds.size;
    CGFloat yOffset = 0;
    if(contentSize.height < boundsSize.height) {
        yOffset = floorf((boundsSize.height - contentSize.height)/2);
    }
    //    self.tableView.contentOffset = CGPointMake(0, yOffset);
    self.contentInset = UIEdgeInsetsMake(yOffset, 0, 0, 0);
}

@end
