//
//  CalendarManipulator.m
//  CandidateInterview
//
//  Created by Thomas Hanks on 10/31/12.
//  Copyright (c) 2012 www.tommymaxhanks.com. All rights reserved.
//

#import "CalendarManipulator.h"

#pragma mark - Private Interface
@interface CalendarManipulator ()
@end

@implementation CalendarManipulator
+(NSDate*)subtractWeeks:(int)weeks fromDate:(NSDate*)date;
{
    
    NSCalendar  *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponents = [calendar components:(NSDayCalendarUnit | NSWeekdayCalendarUnit | NSWeekCalendarUnit) fromDate:date];
   
    dateComponents.week -= weeks;
    NSDate *newDate = [calendar dateFromComponents:dateComponents];
    NSLog(@"Test New Date: %@", newDate);
    
  return newDate;
}
@end
