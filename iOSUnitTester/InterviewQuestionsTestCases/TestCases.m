//
//  TestCases.m
//  InterviewQuestionsTestCases
//
//  Created by Tim Kelly on 7/2/14.
//  Copyright (c) 2014 Tim. All rights reserved.
//

#import "TestCases.h"

@implementation TestCases

#define ASCII_0_VALU 48
#define ASCII_9_VALU 57
#define ASCII_A_VALU 65
#define ASCII_F_VALU 70
// Convert a hex string to an integer
// Does not have any check for leading 0x, so presumes you don't add it
+ (int)hexStringToInt:(const char *)hexstring{
    
        int test = 0 << 0; // 0
        test = 0 << 1; // 0
        test = 4 << 1; // 8
        test = 4 << 2; // 16
        test = 4 << 3; // 32
        test = 4 << 4; // 64
    
        unsigned int result = 0;
        char const *c = hexstring; // pointer to the input string
        char thisC; // the current character we are evaluating
    
        // start from the front of the string until we get to the null termination
        while( (thisC = *c) != nil )
        {
            unsigned int add;
            thisC = toupper(thisC);
            
            // left shift operator
            result <<= 4;
            
            if( thisC >= ASCII_0_VALU &&  thisC <= ASCII_9_VALU )
                add = thisC - ASCII_0_VALU;
            else if( thisC >= ASCII_A_VALU && thisC <= ASCII_F_VALU)
                add = thisC - ASCII_A_VALU + 10;
            else
            {
                printf("Unrecognised hex character \"%c\"\n", thisC);
                exit(-1);
            }
            
            result += add;
            ++c;
        }
        
        return result;	
  
    
}

/* check to see whether two strings are anagrams of each other.
   This algorithm just keeps two 26 char arrays and a count of
   how many letters appear in each from each word.
   If all the indexes of the two arrays are equal, there is a match.
 
   Does not support numbers.
 
   a == 97
   A == 65
 */
+ (int) check_anagram:(char [])a withChar:(char [])b
{
    int first[26] = {0}, second[26] = {0}, c = 0;
    
    // TODO: Here we would want to make everything lower case
    
    while (a[c] != '\0')
    {
        // Set the char count in the first array.
        // We subtract out the value of 'a' such that
        // 'a' - 'a' will equal 0
        // 'b' - 'a' will equal 1
        // and so forth so the entire alphabet is covered.
        first[a[c]-'a']++;
        c++;
    }
    
    c = 0;
    
    while (b[c] != '\0')
    {
        second[b[c]-'a']++;
        c++;
    }
    
    // Iterate though both of the character count arrays
    // and as long as each index as the same count then we have an anagram
    for (c = 0; c < 26; c++)
    {
        if (first[c] != second[c])
            return 0;
    }
    
    return 1;
}

/** Check to see if a given word is a palindrome. A palindrome is a work that is spelled the same backwards as it is forwards */
+ (BOOL)isPalindrome:(NSString *)s1{
    
    BOOL isPalindrome = YES;
    
    if (s1 == nil) return NO;
    if ([s1 length] < 3) return NO;
    
    // Make lower case
    s1 = [s1 lowercaseString];
    
    // Remove whitespace
    s1 = [s1 stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    int lastIndex = [s1 length] - 1;
    for (int i = 0; i < [s1 length] / 2; i++){
        
        if ([s1 characterAtIndex:i] != [s1 characterAtIndex:lastIndex]){
            isPalindrome = NO;
            break;
        }
        --lastIndex;
    }
    
    
    return isPalindrome;
}


+ (uint) fibonacci_recursive:(uint)n
{
    if (n == 0)
    {
        return 0;
    }
    if (n == 1) {
        return 1;
    }
    
    return [self fibonacci_recursive:(n - 1)] + [self fibonacci_recursive:(n - 2)];
}

@end
