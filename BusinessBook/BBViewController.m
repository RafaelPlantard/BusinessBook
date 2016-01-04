//
//  ViewController.m
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/3/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "BBViewController.h"
#import "Models/BBBusinessModel.h"

@interface BBViewController ()

@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)employeesAmountChanged:(UIStepper *)sender {
    _employeesAmountField.text = [NSString stringWithFormat:@"%d", (int)sender.value];
}

/*! @brief Add a new business to the list of business in the memory. */
- (void)addBusiness:(BBBusinessModel *)business {
    if (!businessList) {
        businessList = [NSMutableArray new];
    }
    
    [businessList addObject:business];
}

/*! @brief Shows the current list of business on runtime. */
- (void)showBusinessBook {
    NSMutableString *businessBook = [NSMutableString stringWithString:@"\n******* Listing all companies *******\n\n"];
    
    for (BBBusinessModel *b in businessList) {
        [businessBook appendString:[NSString stringWithFormat:@"The company %@ has %d employees.\n", b.name, b.employeesAmount]];
    }
    
    NSLog(@"%@", businessBook);
}

- (IBAction)saveNewCompany:(id)sender {
    [_businessNameField resignFirstResponder];
    
    BBBusinessModel *b = [[BBBusinessModel alloc] initWithName:_businessNameField.text andEmployeesAmount:[_employeesAmountField.text intValue]];
    
    [self addBusiness:b];
    [self showBusinessBook];
    
    _successAlertField.alpha = 0;
    
    [UIView animateWithDuration:1 animations:^{
        _successAlertField.hidden = NO;
        _successAlertField.alpha = 1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 delay:2 options:UIViewAnimationOptionTransitionNone animations:^{
            _successAlertField.alpha = 0;
        } completion:^(BOOL finished) {
            _successAlertField.hidden = YES;
        }];
    }];
}

@end