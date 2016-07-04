//
//  FISAddTriviaViewController.m
//  locationTrivia-dataStore
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISAddTriviaViewController.h"
#import "FISTrivium.h"
#import "FISLocation.h"


@interface FISAddTriviaViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation FISAddTriviaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameField.accessibilityLabel = @"Trivium TextField";
    self.nameField.accessibilityIdentifier = @"Trivium TextField";
    self.cancelButton.accessibilityIdentifier = @"Cancel Button";
    self.cancelButton.accessibilityLabel = @"Cancel Button";
    self.saveButton.accessibilityLabel = @"Save Button";
    self.saveButton.accessibilityIdentifier = @"Save Button";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonTapped:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)saveButtonTapped:(id)sender {
    
    FISTrivium *newTrivium = [[FISTrivium alloc] initWithContent:self.nameField.text likes:0];
    [self.location.trivia addObject:newTrivium];
    
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
