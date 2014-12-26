//
//  Asset.m
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import "Asset.h"

@implementation Asset

-(NSString *)description
{
    if([self holder])
    {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>",[self label],[self resaleValue], [self holder]] ;
    }
    else
    {
        return [NSString stringWithFormat:@"<%@: $%d, unassigned>",[self label],[self resaleValue]] ;
    }
}

-(void) dealloc
{
    NSLog(@"deallocing %@",self) ;
}
@end
