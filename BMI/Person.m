//
//  Person.m
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import "Person.h"
@interface Person () //This is a class extension

@property int ageFactor ; //ageFactor can be set and got by all methods within Person.m but not by outside objects
@end

@implementation Person //method implementation go between @implementation and @end

- (float) bodyMassIndex
{
    if([self ageFactor]!=0)
    {
        return (_weightInKilos*_ageFactor/(_heightInMeters*_heightInMeters)) ;
    }
    else
    {
        return ([self weightInKilos]/pow([self heightInMeters],2)) ;

    }
}

- (void) weightFactor:(int) factor
{
    [self setAgeFactor:factor] ;
}


@end
