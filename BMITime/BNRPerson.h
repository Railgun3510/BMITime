//
//  BNRPerson.h
//  BMITime
//
//  Created by Cheuk Him Ho on 22/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject
{
    // BNRPerson has two instance variables
    float _heightInMeters;
    int _weightInKilos;
}
// BNRPerson has methods to read and set its instances variables
- (float)heightInMeters;
- (void)setHeightInMeters:(float)h;
- (int)weightInKilos;
- (void)setWeightInKilos:(int)w;

// BNRPerson has a method that calculate the body mass index
- (float)bodyMassIndex;
@end
