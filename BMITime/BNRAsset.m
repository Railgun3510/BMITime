//
//  BNRAsset.m
//  BMITime
//
//  Created by Cheuk Him Ho on 26/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
	return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
	NSLog(@"deallocating %@", self);
}

@end
