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
        
        /* Old code
        Person *person = [[Person alloc] init] ;
        [person setWeightInKilos:100] ;
        [person setHeightInMeters:1.8] ;
       // NSLog(@"BMI = %.2f",[person bodyMassIndex]);
        //        [person setAgeFactor:2] ;//Wont work
        [person weightFactor:2] ;
        //[person setEmployeeID:15] ; //Wont work since person is not an Employee
        
        //NSLog(@"BMI = %.2f",[person bodyMassIndex]); //Should be twise previous one
        
        Employee *employee = [[Employee alloc] init] ;
        [employee setWeightInKilos:96] ;
        [employee setHeightInMeters:1.8] ;
        //NSLog(@"BMI = %.2f",[employee bodyMassIndex]);
        //        [person setAgeFactor:2] ;//Wont work
        //[employee weightFactor:2] ;
        [employee setEmployeeID:0] ; //Wont work since person is not an Employee
         //NSLog(@"Employee %d: BMI = %.2f",[employee employeeID], [employee bodyMassIndex]); //Should be twise previous one

        Asset *newAsset = [[Asset alloc] init] ;
        [newAsset setResaleValue:51] ;
        [newAsset setLabel:@"Laptop 3"] ;
        [employee addAssetsObject:newAsset] ;
        Asset *newAsset3 = [[Asset alloc] init] ;
        [newAsset3 setResaleValue:119] ;
        [newAsset3 setLabel:@"Laptop 7"] ;
        [employee addAssetsObject:newAsset3] ;
        
        NSMutableArray *employees = [[NSMutableArray alloc] init] ;
        
         [employees addObject:employee] ;
        
        Employee *employee2 = [[Employee alloc] init] ;
        [employee2 setWeightInKilos:98] ;
        [employee2 setHeightInMeters:1.7] ;
        [employee2 setEmployeeID:1] ; //Wont work since person is not an Employee
        
        Asset *newAsset2 = [[Asset alloc] init] ;
        [newAsset2 setResaleValue:34] ;
        [newAsset2 setLabel:@"Laptop 2"] ;
        [employee2 addAssetsObject:newAsset2] ;
        
        [employees addObject:employee2] ;
        
        for(Employee *employee in employees)
        {
            NSLog(@"Employee information: ID: %d, BMI = %.2f, Value of assets = %d\n",[employee employeeID], [employee bodyMassIndex], [employee valueOfAssets]); //Should be twise previous one
            unsigned int i=0 ;
            for(Asset *asset in [employee assets])
            {
                i++ ;
                NSLog(@"\tAsset %d: resaleValue = %d, Name = %@\n",i,[asset resaleValue],[asset label]) ;
            }
        }
         */
        
        //sleep(60) ;
        
        NSMutableArray *employees = [[NSMutableArray alloc] init] ;

        for (int i=0; i< 10; i++)
        {
            Employee *person =[[Employee alloc] init] ;
            [person setWeightInKilos:90+i] ;
            [person setHeightInMeters:1.8-(i/10.0)] ;
            [person setEmployeeID:i] ;
            
            [employees addObject:person] ;
        }
        
        NSMutableArray *assets = [[NSMutableArray alloc] init] ;

        for(int i=0;i<10;i++)
        {
            Asset *newAsset2 = [[Asset alloc] init] ;
            [newAsset2 setResaleValue:i*17] ;
            [newAsset2 setLabel:[NSString stringWithFormat:@"Laptop %d",i]] ;
            
            NSUInteger randomIndex = random() % [employees count] ;
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex] ;
            
            [randomEmployee addAssetsObject:newAsset2] ;
            [assets addObject:newAsset2] ;
        }
        
        NSLog(@"Employees: %@",employees) ;
        NSLog(@"Giving up ownership of one employee") ;
        [employees removeObjectAtIndex:5] ;
        NSLog(@"All assets %@",assets) ;
      //  NSLog(@"Giving up ownership of array") ;
      // employees=nil ;
        //sleep(10) ;
    }
  sleep(60) ;
    return 0;
}
