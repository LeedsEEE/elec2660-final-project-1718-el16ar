//
//  BookingCreateViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookingCreateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *NoOfGuests;
- (IBAction)NoOfGuestsEdit:(UITextField *)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *DatePicker;
@property(nonatomic) NSInteger minuteInterval;

@end
