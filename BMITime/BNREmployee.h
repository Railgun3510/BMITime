//
//  BNREmployee.h
//  BMITime
//
//  Created by Cheuk Him Ho on 24/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNRPerson.h"

@interface BNREmployee : BNRPerson

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;

- (double)yearsOfEmployment;


@end
