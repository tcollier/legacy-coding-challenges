//
//  CalendarManipulator.h
//  CandidateInterview
//
//  Created by Thomas Hanks on 10/31/12.
//  Copyright (c) 2012 www.tommymaxhanks.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface CalendarManipulator : NSObject
+(NSDate*)subtractWeeks:(int)weeks fromDate:(NSDate*)date;
@end
