//
//  ExistingBookingsViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// reloadData and refreshRow functions from https://stackoverflow.com/questions/7722711/reload-uitableview-data-without-reloading-the-view

#import "ExistingBookingsViewController.h"
#

@interface ExistingBookingsViewController ()

//@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end

@implementation ExistingBookingsViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data = [[BookingDataModel alloc] init];
   }

- (void) viewDidAppear:(BOOL)animated{
    self.data = [[BookingDataModel alloc] init];
    [self.bookingTableView reloadData];
    [self refreshRows];
    [self.bookingTableView reloadData];
    //data reloaded into table
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)refreshRows {
    //row data removed
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)bookingTableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)bookingTableView numberOfRowsInSection:(NSInteger)section {
    return self.data.ExistingBookings.count;
}

- (UITableViewCell *)tableView:(UITableView *)bookingTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [bookingTableView dequeueReusableCellWithIdentifier:@"BookingsCell" forIndexPath:indexPath];
    
    Booking *tempBooking = [self.data.ExistingBookings objectAtIndex:indexPath.row];
    //temporary storage of data from array
    cell.textLabel.text = tempBooking.restaurant;
    //title entered for each entry
    cell.detailTextLabel.text = tempBooking.date;
    
    return cell;
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"bookingSegue"]) {
        
    BookingsViewController *destinationViewController = [segue destinationViewController];
        
    NSIndexPath *indexPath = [self.bookingTableView indexPathForSelectedRow];
    
    Booking *tempbooking = [self.data.ExistingBookings objectAtIndex:indexPath.row];
    destinationViewController.booking = tempbooking;
    }
}

@end

