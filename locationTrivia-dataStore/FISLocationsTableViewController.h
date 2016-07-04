//
//  FISLocationsTableViewController.h
//  locationTrivia-dataStore
//
//  Created by David Park on 7/3/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocationsDataStore.h"
#import "FISLocation.h"

@interface FISLocationsTableViewController : UITableViewController

@property (strong , nonatomic)FISLocationsDataStore *store;

@end