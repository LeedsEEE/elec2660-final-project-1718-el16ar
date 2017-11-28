//
//  BookingCreateViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RestaurantViewController.h"
#import "BookingEntity.h"

@interface BookingCreateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *NoOfGuests;
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;
@property (nonatomic, strong) RestaurantViewController *Restaurantselected;
@property (weak, nonatomic) IBOutlet UITextView *textOutput;


- (IBAction)NoOfGuestsEdit:(UITextField *)sender;
- (IBAction)ConfirmButtonPressed:(UIButton *)sender;


@end
