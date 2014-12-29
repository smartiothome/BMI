//
//  main.m
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *employees = [[NSMutableArray alloc] init] ;

        for (int i=0; i< 10; i++)
        {
            Employee *person =[[Employee alloc] init] ;
            [person setWeightInKilos:90+i] ;
            [person setHeightInMeters:1.8-(i/10.0)] ;
            [person setEmployeeID:i] ;
            
            [employees addObject:person] ;
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init] ;

        for(int i=0;i<10;i++)
        {
            Asset *newAsset = [[Asset alloc] init] ;
            [newAsset setResaleValue:i*17] ;
            [newAsset setLabel:[NSString stringWithFormat:@"Laptop %d",i]] ;
            
            NSUInteger randomIndex = random() % [employees count] ;
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex] ;
            
            [randomEmployee addAssetsObject:newAsset] ;
            [allAssets addObject:newAsset] ;
        }
        
        NSLog(@"Employees: %@",employees) ;
       // NSLog(@"Giving up ownership of one employee") ;
        //[employees removeObjectAtIndex:5] ;
        NSLog(@"All assets %@",allAssets) ;
        NSLog(@"Giving up ownership of array") ;
        employees=nil ;
        //sleep(30) ;
    }
    return 0;
}
