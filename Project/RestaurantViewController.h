//
//  RestaurantViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantDataModel.h"
#import "RestaurantViewController.h"

@interface RestaurantViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *restaurantNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *restaurantTypeLabel;
@property (weak, nonatomic) IBOutlet UILabel *restaurantAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *restaurantDescriptionLabel;

@property (strong, nonatomic) Restaurant *restaurant;

@end
