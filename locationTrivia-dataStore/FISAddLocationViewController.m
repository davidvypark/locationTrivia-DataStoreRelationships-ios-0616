//
//  FISAddLocationViewController.m
//  locationTrivia-dataStore
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddLocationViewController.h"

@interface FISAddLocationViewController ()
@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;

@end

@implementation FISAddLocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameField.accessibilityLabel = @"nameField";
    self.nameField.accessibilityIdentifier = @"nameField";
    self.latitudeField.accessibilityLabel = @"latitudeField";
    self.latitudeField.accessibilityIdentifier = @"latitudeField";
    self.longitudeField.accessibilityLabel = @"longitudeField";
    self.latitudeField.accessibilityIdentifier = @"longitudeField";
    self.cancelButton.accessibilityLabel = @"cancelButton";
    self.cancelButton.accessibilityIdentifier = @"cancelButton";
    self.saveButton.accessibilityIdentifier = @"saveButton";
    self.saveButton.accessibilityLabel = @"saveButton";
    self.navigationItem.rightBarButtonItem.accessibilityIdentifier = @"addButton";
    self.navigationItem.rightBarButtonItem.accessibilityLabel = @"addButton";
    
    self.store = [FISLocationsDataStore sharedLocationsDataStore];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)saveButtonTapped:(id)sender {
    
    FISLocation *newLocation = [[FISLocation alloc] initWithName:self.nameField.text latitude:[self.latitudeField.text floatValue] longitude:[self.longitudeField.text floatValue]];
    
    [self.store.locations addObject:newLocation];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
