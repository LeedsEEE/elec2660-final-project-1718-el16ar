//
//  RestaurantViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RestaurantViewController.h"

@interface RestaurantViewController ()

@end

@implementation RestaurantViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.restaurantNameLabel.text = self.restaurant.restaurantName;
    self.restaurantTypeLabel.text = self.restaurant.restaurantType;
    self.restaurantAddressLabel.text = self.restaurant.restaurantAddress;
    self.restaurantDescriptionLabel.text = self.restaurant.restaurantDescription;
    self.restaurantImage.image = [UIImage imageNamed:self.restaurant.restaurantImage];
    //Labels set to restaurant values
    
    self.createReservationButton.layer.cornerRadius = 10;
    self.createReservationButton.clipsToBounds = true;
    self.createReservationButton.layer.borderWidth = 1;
    //round corners of button and add border
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"restaurantdata"]) {
        
        BookingCreateViewController *destinationViewController = [segue destinationViewController];
        
        destinationViewController.restaurant = self.restaurant;
        //restaurant name pushed by segue to next view 

    }
    
}

@end
