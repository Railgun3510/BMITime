//
//  BNREmployee.m
//  BMITime
//
//  Created by Cheuk Him Ho on 24/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNREmployee.h"

@implementation BNREmployee

- (double)yearsOfEmployment
{
    if (self.hireDate) {
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}

- (float) bodyMassIndex // Override superclass implementation (value)
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.8;
}

- (NSString *)description // Describe instance "mikey"
{
    return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
}

@end
