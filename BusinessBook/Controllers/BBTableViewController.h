//
//  BBTableViewController.h
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/12/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <UIKit/UIKit.h>

/*! @brief The code-behind for the controller that has the table view. */
@interface BBTableViewController : UITableViewController

/*! @brief The list of business. */
@property (nonatomic, assign) NSMutableArray *businessList;

@end