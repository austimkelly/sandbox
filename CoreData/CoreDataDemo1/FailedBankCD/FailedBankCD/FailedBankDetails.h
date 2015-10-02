//
//  FailedBankDetails.h
//  FailedBankCD
//
//  Created by Tim Kelly on 7/9/14.
//  Copyright (c) 2014 Tim Kelly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class FailedBankInfo;

@interface FailedBankDetails : NSManagedObject

@property (nonatomic, retain) NSNumber * zip;
@property (nonatomic, retain) NSDate * updateDate;
@property (nonatomic, retain) NSDate * closeDate;
@property (nonatomic, retain) FailedBankInfo *info;

@end
