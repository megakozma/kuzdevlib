//
//  NSDate+KuzDevLib.m
//  kuzdevlib
//
//  Created by Михаил Кузеванов on 31.08.16.
//  Copyright © 2016 kuz-dev.ru. All rights reserved.
//

#import "NSDate+KuzDevLib.h"

@implementation NSDate (KuzDevLib)

-(NSDate *)addYears:(NSInteger)years
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setYear:years];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *newDate = [calendar dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

-(NSDate *)addDays:(int)days
{
    return [self dateByAddingTimeInterval:60*60*24*days];
}

-(BOOL) equalDateOnly: (NSDate *) date1
{
    NSDateComponents *otherDay = [[NSCalendar currentCalendar] components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:date1];
    NSDateComponents *today = [[NSCalendar currentCalendar] components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:self];
    if([today day] == [otherDay day] &&
       [today month] == [otherDay month] &&
       [today year] == [otherDay year] &&
       [today era] == [otherDay era])
        return YES;
    return NO;
}

-(NSDate *)addMonths: (NSInteger)months
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMonth:months];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *newDate = [calendar dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

-(NSDate *)addMinutes:(NSInteger)minutes
{
    NSDateComponents *dateComponents = [[NSDateComponents alloc] init];
    [dateComponents setMinute:minutes];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDate *newDate = [calendar dateByAddingComponents:dateComponents toDate:self options:0];
    return newDate;
}

-(NSDate *) toLocalTime
{
    NSTimeZone *tz = [NSTimeZone localTimeZone];
    NSInteger seconds = [tz secondsFromGMTForDate: self];
    return [NSDate dateWithTimeInterval: seconds sinceDate: self];
}

-(NSDate *) toGlobalTime
{
    NSTimeZone *tz = [NSTimeZone localTimeZone];
    NSInteger seconds = -[tz secondsFromGMTForDate: self];
    return [NSDate dateWithTimeInterval: seconds sinceDate: self];
}


@end
