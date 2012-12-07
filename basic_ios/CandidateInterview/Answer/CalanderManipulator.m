//
//  CalanderManipulator.m
//  CandidateInterview
//
//  Created by Thomas Hanks on 10/31/12.
//  Copyright (c) 2012 www.tommymaxhanks.com. All rights reserved.
//

#import "CalanderManipulator.h"

#pragma mark - Private Interface
@interface CalanderManipulator ()
@end

@implementation CalanderManipulator
+(NSDate*)subtractWeeks:(int)weeks fromDate:(NSDate*)date{

  NSCalendar* currentCalendar = [NSCalendar currentCalendar];
  NSDateComponents* components = [currentCalendar components:NSYearCalendarUnit|NSWeekCalendarUnit fromDate:date];
  [components setWeek:components.week - weeks];
  
  NSDate* newDate = [currentCalendar dateFromComponents:components];
  
  return newDate;
}

@end
