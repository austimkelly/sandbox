//
//  TestCases.h
//  InterviewQuestionsTestCases
//
//  Created by Tim Kelly on 7/2/14.
//  Copyright (c) 2014 Tim. All rights reserved.
//

#import <Foundation/Foundation.h>

// Helper class with a bunch of static methods for algorightms that are commonly asked as interview questions
@interface TestCases : NSObject

+ (int)hexStringToInt:(const char *)hexstring;
+ (int) check_anagram:(char [])a withChar:(char [])b;
+ (BOOL)isPalindrome:(NSString *)s1;

// http://en.wikipedia.org/wiki/Fibonacci_number
+ (uint) fibonacci_recursive:(uint)n;

@end
