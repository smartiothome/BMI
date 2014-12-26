//
//  Employee.m
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import "Employee.h"

@interface Employee()

@end

@implementation Employee

- (float) bodyMassIndex
{
    return [super bodyMassIndex]*0.9 ;
}

-(void)addAssetsObject:(Asset *)a
{
    if([self assets]!=nil)
    {
        [[self assets] addObject:a] ;
    }
    else
    {
        _assets = [[NSMutableArray alloc] init]  ;
        [[self assets] addObject:a] ;
    }
    
    [a setHolder:self] ;
}

-(unsigned int)valueOfAssets
{
    unsigned int totalAssetValue = 0 ;
    
    for(Asset *nextAsset in [self assets])
    {
        totalAssetValue+=[nextAsset resaleValue] ;
    }
    return totalAssetValue ;
}

-(NSString *)description
{
    
        return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",[self employeeID],[self valueOfAssets]] ;
}

-(void) dealloc
{
    NSLog(@"deallocing %@",self) ;
}


@end
