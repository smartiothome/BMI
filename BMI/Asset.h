//
//  Asset.h
//  BMI
//
//  Created by Smart Home on 12/24/14.
//  Copyright (c) 2014 Smart Home. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee ;

@interface Asset : NSObject

@property unsigned int resaleValue ;
@property NSString *label ;
@property Employee *holder ;

@end
