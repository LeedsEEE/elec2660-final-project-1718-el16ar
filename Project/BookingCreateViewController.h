//
//  BookingCreateViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantViewController.h"
#import "RestaurantDataModel.h"

@interface BookingCreateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;
@property (strong, nonatomic) Restaurant *restaurant;
@property (weak, nonatomic) IBOutlet UILabel *noOfGuestsLabel;
@property (weak, nonatomic) IBOutlet UIButton *confirmButton;

@property(nonatomic, retain) NSDate *dateVal;
@property (strong, nonatomic) NSString *restaurantName;
@property NSInteger noOfGuests;
@property (strong, nonatomic) NSString *date;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *dateFull;

- (IBAction)ConfirmButtonPressed:(UIButton *)sender;


@end
