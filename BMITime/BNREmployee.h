//
//  BNREmployee.h
//  BMITime
//
//  Created by Cheuk Him Ho on 24/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNRPerson.h"
@class BNRAsset; //adding to-many relationship

@interface BNREmployee : BNRPerson
{
	NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic) NSString *lastName;
@property (nonatomic) BNRPerson *spouse;
@property (nonatomic) NSMutableArray *children;

- (double)yearsOfEmployment;

@property (nonatomic, copy) NSArray *assets;
- (void)addAsset:(BNRAsset *)a;
- (unsigned int)valueOfAssets;

@end
