//
//  Person.h
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property float heightInMeters ;
@property int weightInKilos ;

- (float) bodyMassIndex ;
- (void) weightFactor:(int) factor ;

@end
