//
//  BNRPerson.h
//  BMITime
//
//  Created by Cheuk Him Ho on 22/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

// With properties set, it automatically declare accessors

// BNRPerson has two properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

// BNRPerson has a method that calculate the body mass index
- (float)bodyMassIndex;
@end
