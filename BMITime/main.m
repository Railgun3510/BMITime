//
//  main.m
//  BMITime
//
//  Created by Cheuk Him Ho on 22/11/14.
//  Copyright (c) 2014 Cheuk Him Ho. All rights reserved.
//

#import <Foundation/Foundation.h> // Angled bracket means can be found in Apple library
#import "BNREmployee.h" // Quotation mark means can be found in current project

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an instance of BNREmployee
        BNREmployee *mikey = [[BNREmployee alloc]init];
        
        // Give the instance variables interesting values using setters using dot notation
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        mikey.employeeID = 12;
        NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
        [formatter setDateFormat:@"M, d, y 'at' hh:mm"];
        NSDate *dateEntry = [formatter dateFromString:@"May, 5, 2013 at 22:24"];
        mikey.hireDate = dateEntry;
        
        // Log the instance variables using the getters
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weights %d kilograms", height, weight);
        // Use %@ to call out "mikey" description
        NSLog(@"%@ hired on %@", mikey, mikey.hireDate);
        
        // Log some values using custom methods
        float bmi = mikey.bodyMassIndex;
        double years = mikey.yearsOfEmployment;
        NSLog(@"mikey has a BMI of %.1f, has worked with us for %.2f years", bmi, years);
    }
    return 0;
}
