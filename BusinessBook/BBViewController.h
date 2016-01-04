//
//  ViewController.h
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/3/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <UIKit/UIKit.h>

/*! @brief ViewController for the Main.controller. */
@interface BBViewController : UIViewController {
    /*! @brief A list for all business on memory. */
    NSMutableArray *businessList;
}

/*! @brief The name of the new business. */
@property (weak, nonatomic) IBOutlet UITextField *businessNameField;

/*! @brief Quantity of employees for a specific business. */
@property (weak, nonatomic) IBOutlet UITextField *employeesAmountField;

/*! @brief Event of ValueChanged for the Stepper component. */
- (IBAction)employeesAmountChanged:(UIStepper *)sender;

/*! @brief Event of Tapped for the SaveButton. */
- (IBAction)saveNewCompany:(id)sender;

/*! @brief A label that is showed when a new business is saved successfully. */
@property (weak, nonatomic) IBOutlet UILabel *successAlertField;

@end