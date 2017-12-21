//
//  NSDate+KuzDevLib.h
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 31.08.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (KuzDevLib)

-(NSDate *)addYears: (NSInteger) years;
-(NSDate *)addMonths: (NSInteger)months;
-(NSDate *)addDays:(int)days;
-(NSDate *)addMinutes:(NSInteger)minutes;

-(BOOL) equalDateOnly: (NSDate *) date1;

-(NSDate *) toLocalTime;
-(NSDate *) toGlobalTime;

@end
