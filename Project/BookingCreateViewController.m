//
//  BookingCreateViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BookingCreateViewController.h"

@interface BookingCreateViewController ()

@end

@implementation BookingCreateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Selected Restaurant: %@", self.restaurant.restaurantName);
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
    
 /*  NSDictionary *bookingInfo = @{@"restaurant": self.restaurant.restaurantName,
                               @"date": self.DatePicker.date ,
                              @"noOfGuests": self.NoOfGuests};
    
    self.textOutput.text = [Bookings addBookingEntityInfoFromDictionary:bookingInfo].description;
    
    */
    
 //  NSUserDefaults *StoreNum = [NSUserDefaults standardUserDefaults];
  // [StoreNum setInteger:self.NoOfGuests.text.integerValue forKey:@"Num"];
  //[StoreNum synchronize];

    NSString *restaurantName = self.restaurant.restaurantName;
    NSInteger noOfGuests = self.noOfGuestsLabel.text.integerValue;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    NSString *date = [dateFormatter stringFromDate:_DatePicker.date];
    
    int i= 0;
    
    NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
    
   // testRestaurant = [StoreRestaurant stringForKey:@"key1"];
    
 //   if (StoreRestaurant.objectFor()) ){
      //  NSLog(@"EMPTY KEY");
  //  }

    for (i = 0; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] != NULL; i++) {
    }
    
    if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] == NULL) {
        
//    [restaurantStore setObject:restaurantName forKey:[NSString stringWithFormat:@"Key%d",i]];
//    [numStore setInteger:noOfGuests forKey:[NSString stringWithFormat:@"Key%d",i]];
 //   [dateStore setObject:date forKey:[NSString stringWithFormat:@"Key%d",i]];
        
        [restaurantStore setObject:restaurantName forKey:@"restKey1"];
        [numStore setInteger:noOfGuests forKey:@"numKey1"];
        [dateStore setObject:date forKey:@"dateKey1"];
        
        
    [restaurantStore synchronize];
  //  [numStore synchronize];
  //  [dateStore synchronize];

          
        NSLog(@"Booking stored at key: %d", i);
        
    }
    
    
    
    
   // NSUserDefaults *StoreDate = [NSUserDefaults standardUserDefaults];
  //  [StoreDate setObject:self.restaurant.restaurantName forKey:@"Restaurant"];
   // [StoreRestaurant synchronize];

}
@end

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
