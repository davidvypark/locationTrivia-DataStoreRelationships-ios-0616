//
//  FISLocationsTableViewController.m
//  locationTrivia-dataStore
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"
#import "FISTriviaTableViewController.h"

@interface FISLocationsTableViewController ()

@end

@implementation FISLocationsTableViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";
    self.store = [FISLocationsDataStore sharedLocationsDataStore];
    self.navigationItem.rightBarButtonItem.accessibilityLabel = @"addButton";
    self.navigationItem.rightBarButtonItem.accessibilityIdentifier = @"addButton";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.store.locations count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"locationsCell" forIndexPath:indexPath];
    
    FISLocation *currentLocation = self.store.locations[indexPath.row];
    cell.textLabel.text = currentLocation.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",[currentLocation.trivia count]];
    
    return cell;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISTriviaTableViewController *destinationVC = [segue destinationViewController];
    
    if ([segue.identifier isEqualToString:@"triviaSegue"]){
        NSIndexPath *clickedIndexPath = [self.tableView indexPathForSelectedRow];
        destinationVC.location = self.store.locations[clickedIndexPath.row];
        
    }
    
}


@end
