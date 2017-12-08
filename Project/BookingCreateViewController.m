//
//  BookingCreateViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// alert messages from https://developer.apple.com/documentation/uikit/uialertcontroller?language=objc

#import "BookingCreateViewController.h"

@interface BookingCreateViewController ()

@end

@implementation BookingCreateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Selected Restaurant: %@", self.restaurant.restaurantName);
    
    self.confirmButton.layer.cornerRadius = 10;
    self.confirmButton.clipsToBounds = true;
    self.confirmButton.layer.borderWidth = 1;
    //round corners of button and add border
    
    self.noOfGuestsLabel.text = @"0";
        
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NoOfGuestStepper:(UIStepper *)sender {
    self.noOfGuestsLabel.text = [NSString stringWithFormat:@"%0.f", sender.value];
    //Label for num of guests changed with stepper
    
}


- (IBAction)ConfirmButtonPressed:(UIButton *)sender {
    
    if ([self.noOfGuestsLabel.text  isEqual: @"0"]) {
        
        UIAlertController* errorMessage1 = [UIAlertController alertControllerWithTitle:@"Error"
                                                                message:@"Number of guests must be more than 0"
                                                                preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [errorMessage1 addAction:defaultAction];

        [self presentViewController:errorMessage1 animated:YES completion:nil];
        
        //error message created for case of user trying book for no guests
        
    } else {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"dd MMM, hh:mm aa"];
    self.dateVal =  self.DatePicker.date;
    self.dateFull = [dateFormatter stringFromDate:self.dateVal];
    //get date from date picker
        
    NSArray *splitDate = [self.dateFull componentsSeparatedByString:@", "];
    
    self.date = splitDate[0];
    self.time = splitDate[1];
    //date split into date and time
        
    NSLog(@"date selected: %@",self.date);
    NSLog(@"time selected: %@",self.time);
    
    self.restaurantName = self.restaurant.restaurantName;
    self.noOfGuests = self.noOfGuestsLabel.text.integerValue;
    //get restaurant and num of guests
    
    int i;
    //key value
        
    NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *timeStore = [NSUserDefaults standardUserDefaults];
    // NSUserDefaults declared to store booking values
    
        for (i = 0; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL; i++) {
        }
        
        //for loop increments key value until empty user defaults found
    
        if (i>4) {
            
            NSLog(@"number of bookings exceeded");
            
            UIAlertController* errorMessage2 = [UIAlertController alertControllerWithTitle:@"Error"
                                                                                  message:@"No more than 5 reservations can be stored at a time"
                                                                           preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
            
            [errorMessage2 addAction:defaultAction];
            
            [self presentViewController:errorMessage2 animated:YES completion:nil];
            
            //error message for attempting to store more than 5 reservations
            
        }else {
        
    if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] == NULL) {

    
        [restaurantStore setObject:self.restaurantName forKey:[NSString stringWithFormat:@"restaurantValKey%d",i]];
        [numStore setInteger:self.noOfGuests forKey:[NSString stringWithFormat:@"numberKey%d",i]];
        [dateStore setObject:self.date forKey:[NSString stringWithFormat:@"dateKey%d",i]];
        [timeStore setObject:self.time forKey:[NSString stringWithFormat:@"timeKey%d",i]];
        
        //User defaults set to restaurant values
        
    }
    
    [restaurantStore synchronize];
    [numStore synchronize];
    [dateStore synchronize];
    [dateStore synchronize];

    
        NSLog(@"Booking stored at key: %d", i);
        
        
        UIAlertController* confirmationMessage = [UIAlertController alertControllerWithTitle:@"Reservation created"
        message:@"Restaurant reserved"
        preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {}];
        
        [confirmationMessage addAction:defaultAction];
        
        [self presentViewController:confirmationMessage animated:YES completion:nil];
            
            //confirmation message displayed
        
            }
        }
    }


@end


