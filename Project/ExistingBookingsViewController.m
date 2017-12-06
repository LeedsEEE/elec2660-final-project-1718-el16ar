//
//  ExistingBookingsViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "ExistingBookingsViewController.h"

@interface ExistingBookingsViewController ()

//@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end

@implementation ExistingBookingsViewController 

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.data = [[BookingDataModel alloc] init];
    
  //  self.bookingsList = [[NSMutableArray alloc] init];
   // [self.bookingsList addObject:@"Example1"];
   // [self.bookingsList addObject:@"Example2"];
   // [self.bookingsList addObject:@"Example3"];
    
  //  NSLog(@"%ld", self.bookingsList.count);
   // NSLog(@"%@", self.bookingsList objectAtIndex:0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)bookingTableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)bookingTableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)bookingTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [bookingTableView dequeueReusableCellWithIdentifier:@"BookingsCell" forIndexPath:indexPath];
    
    Booking *tempBooking = [self.data.ExistingBookings objectAtIndex:indexPath.row];
    //temporary storage of data from array
    cell.textLabel.text = tempBooking.restaurant;
    //title entered for each entry
    
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

/*
    - (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type
    {
        switch(type) {
                
            case NSFetchedResultsChangeInsert:
                [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
                break;
                
            case NSFetchedResultsChangeDelete:
                [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex] withRowAnimation:UITableViewRowAnimationFade];
                break;
        }
    }
 
    
    - (void)controllerDidChangeContent:(NSFetchedResultsController *)controller
    {
        // The fetch controller has sent all current change notifications, so tell the table view to process all updates.
        [self.tableView endUpdates];
    }
}
    
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end

