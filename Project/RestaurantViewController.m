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

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)createButtonPressed:(UIButton *)sender {
    _selectedRestaurant = _restaurantNameLabel.text;
    //restaurant name recorded for next screen
}
@end
