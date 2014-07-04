//
//  InterviewQuestionsTestCasesTests.m
//  InterviewQuestionsTestCasesTests
//
//  Created by Tim Kelly on 7/2/14.
//  Copyright (c) 2014 Tim. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestCases.h"

@interface InterviewQuestionsTestCasesTests : XCTestCase

@end

@implementation InterviewQuestionsTestCasesTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHexToString{
    
    int result = [TestCases hexStringToInt:"abcdef"];
    XCTAssert(result == 11259375, @"Expected 11259375");
    
    result = [TestCases hexStringToInt:"ff"];
    XCTAssert(result == 255, @"Expected 255");
    
    result = [TestCases hexStringToInt:"fff"];
    XCTAssert(result == 4095, @"Expected 4095");
    
    result = [TestCases hexStringToInt:"a"];
    XCTAssert(result == 10, @"Expected 10");
    
    result = [TestCases hexStringToInt:"b"];
    XCTAssert(result == 11, @"Expected 11");
    
    result = [TestCases hexStringToInt:"c"];
    XCTAssert(result == 12, @"Expected 12");
    
    
}

- (void)testAnagram{
    
    bool isAnagram = [TestCases check_anagram:"dog" withChar:"god"];
    XCTAssert(isAnagram == YES, @"Failed test");
    
    isAnagram = [TestCases check_anagram:"ggg" withChar:"ggg"];
    XCTAssert(isAnagram == YES, @"Failed test");
    
    isAnagram = [TestCases check_anagram:"tom" withChar:"tommy"];
    XCTAssert(isAnagram == NO, @"Failed test");
}


- (void)testPalindrome{
    
    bool pass = [TestCases isPalindrome:@"Amore Roma"];
    XCTAssert(pass == YES, @"Failed test");
    
    pass = [TestCases isPalindrome:@"noXinnixon"];
    XCTAssert(pass == YES, @"Failed test");
    
    pass = [TestCases isPalindrome:@"Bob"];
    XCTAssert(pass == YES, @"Failed test");
    
    pass = [TestCases isPalindrome:@"شکر بترازوی وزارت برکش"];
    XCTAssert(pass == YES, @"Failed test");
    
    pass = [TestCases isPalindrome:@"AABBCCDDEE"];
    XCTAssert(pass == NO, @"Passed test when it should have failed");
    
}

- (void)testRecursiveFibonacci{
    
    uint result = [TestCases fibonacci_recursive:0];
    XCTAssert(result == 0, @"Fibonacci failed");
    
    result = [TestCases fibonacci_recursive:1];
    XCTAssert(result == 1, @"Fibonacci failed");
    
    result = [TestCases fibonacci_recursive:12];
    XCTAssert(result == 144, @"Fibonacci failed");
    
}



@end
