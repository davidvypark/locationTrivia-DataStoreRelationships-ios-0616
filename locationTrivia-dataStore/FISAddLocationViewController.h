//
//  FISAddLocationViewController.h
//  locationTrivia-dataStore
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISLocationsDataStore.h"

@interface FISAddLocationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeField;

@property (strong, nonatomic) FISLocationsDataStore *store;

@end
