//
//  BookingsViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BookingsViewController.h"

@interface BookingsViewController ()

@end

@implementation BookingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.restaurantLabel.text = self.booking.restaurant;
    self.dateLabel.text = self.booking.date;
    self.noOfGuestsLabel.text = (@"Number of guests: %@",[NSString stringWithFormat:@"Number of guests: %li", (long)self.booking.noOfGuests]);
    
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

- (IBAction)cancelButtonPress:(UIButton *)sender {
    
    NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
    [restaurantStore setObject:NULL forKey:[NSString stringWithFormat:@"restaurantKey%ld", (long)self.booking.key]];
    NSLog(@"Reservation cancelled");
}
@end
