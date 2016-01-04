//
//  BusinessModel.h
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/4/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <Foundation/Foundation.h>

/*! @brief The model for business informations. */
@interface BBBusinessModel : NSObject

/*! @brief Business name. */
@property (nonatomic, retain) NSString *name;

/*! @brief The total of employees in that company. */
@property (nonatomic, assign) int employeesAmount;

/*! @brief Initializes the object from the name and the amount of the employees for this business. */
- (instancetype)initWithName:(NSString *) name andEmployeesAmount:(int) amount;

@end
