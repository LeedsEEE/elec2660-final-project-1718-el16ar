//
//  BookingsViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookingDataModel.h"
#import "ExistingBookingsViewController.h"

@interface BookingsViewController : UIViewController <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *restaurantLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *noOfGuestsLabel;

@property (strong, nonatomic) Booking *booking;
- (IBAction)cancelButtonPress:(UIButton *)sender;


@end
