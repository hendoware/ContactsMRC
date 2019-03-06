//
//  SHContactsTableViewController.m
//  Contacts MRC
//
//  Created by Sean Hendrix on 3/6/19.
//  Copyright © 2019 Sean Hendrix. All rights reserved.
//

#import "SHContactsTableViewController.h"
#import "SHContact.h"
#import "SHContactController.h"
#import "SHContactViewController.h"

@interface SHContactsTableViewController ()

@property SHContactController *contactController;

@end

@implementation SHContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _contactController = [[SHContactController alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _contactController.contacts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    SHContact *contact = _contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.name;
    cell.detailTextLabel.text = contact.phoneNumber;
    
    return cell;
}

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 }
 */


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SHContactViewController *destinationVC = [segue destinationViewController];
    destinationVC.contactController = _contactController;
    destinationVC.segueIdentifier = segue.identifier;
    
    if ([segue.identifier isEqualToString:@"EditSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SHContact *contact = _contactController.contacts[indexPath.row];
        destinationVC.contact = contact;
    }
}

@end
