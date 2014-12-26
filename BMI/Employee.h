//
//  Employee.h
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Asset.h"

@interface Employee : Person

@property int employeeID ;
@property NSMutableArray *assets ;

-(void)addAssetsObject:(Asset *)a ;
-(unsigned int)valueOfAssets ;

@end
