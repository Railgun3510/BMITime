//
//  BNREmployee.m
//  BMITime
//
//  Created by Cheuk Him Ho on 24/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h" // adding to-many relationship of BNRAsset

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
    return normalBMI * 0.9;
}

- (NSString *)description // Describe instance itself
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
	NSLog(@"deallocating %@", self);
}

// Accessor for assests properties
- (void)setAssets:(NSArray *)a
{
	_assets = [a mutableCopy];
}

- (NSArray *)assets
{
	return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
	// Is assets nil?
	if (!_assets) {
		
		// Create the array
		_assets = [[NSMutableArray alloc]init];
	}
	[_assets addObject:a];
}

- (unsigned int)valueOfAssets
{
	// Sum up the resale value of the assets
	unsigned int sum = 0;
	for (BNRAsset *a in _assets) {
		sum += [a resaleValue];
	}
	return sum;
}
@end
