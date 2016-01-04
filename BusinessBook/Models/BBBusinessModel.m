//
//  BusinessModel.m
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/4/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "BBBusinessModel.h"

@implementation BBBusinessModel

- (instancetype)initWithName:(NSString *)name andEmployeesAmount:(int)amount {
    self = [super init];
    
    if (self) {
        _name = name;
        _employeesAmount = amount;
    }
    
    return self;
}

@end