//
//  BNRPerson.m
//  BMITime
//
//  Created by Cheuk Him Ho on 22/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
