//
//  BBTableViewController.m
//  BusinessBook
//
//  Created by Rafael Ferreira on 1/12/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "BBTableViewController.h"
#import "BBBusinessModel.h"

static NSString *const kBusinessCellIdentifier = @"BusinessCellIdForBBTableViewController";

@implementation BBTableViewController

#pragma mark - UIViewController methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    if (_businessList) {
        [self.tableView reloadData];
    }
}

#pragma mark - UITableViewDelegate methods

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_businessList removeObjectAtIndex:indexPath.row];
    
    NSNumber *indexPathToDelete = [NSNumber numberWithUnsignedInteger:indexPath.row];
    
    [tableView deleteRowsAtIndexPaths:@[indexPathToDelete] withRowAnimation:UITableViewRowAnimationTop];
}

#pragma mark - UITableViewDataSource methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kBusinessCellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:kBusinessCellIdentifier];
    }
    
    BBBusinessModel *b = [_businessList objectAtIndex:indexPath.row];
    
    cell.textLabel.text = b.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Has %d employees.", b.employeesAmount];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _businessList.count;
}

@end