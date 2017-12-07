//
//  ExistingBookingsViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ExistingBookingsViewController.h"
#

@interface ExistingBookingsViewController ()

//@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end

@implementation ExistingBookingsViewController 
@synthesize managedObjectContext;
@synthesize fetchedResultsController;
@synthesize fetchedObjects;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.data = [[BookingDataModel alloc] init];
   }

- (void) viewDidAppear:(BOOL)animated{
    self.data = [[BookingDataModel alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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
   /*
    - (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
    {
        
    }
    */

    - (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
    {
        
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

