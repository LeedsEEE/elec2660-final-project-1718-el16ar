//
//  RestaurantsTableViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantDataModel.h"
#import "RestaurantViewController.h"
#import "SelectTypeViewController.h"

@interface RestaurantsTableViewController : UITableViewController
@property (nonatomic, strong) RestaurantDataModel *data;
@property NSInteger type;

@end
