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
    self.minuteInterval = 5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)NoOfGuestStepper:(UIStepper *)sender {
    _NoOfGuests.text = [NSString stringWithFormat:@"%0.f", sender.value];
}

//lack of constiency when field changed

- (IBAction)NoOfGuestsEdit:(UITextField *)sender {
    
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
