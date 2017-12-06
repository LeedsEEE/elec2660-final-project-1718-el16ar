//
//  ExistingBookingsViewController.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// tab bar icon from: https://m.veryicon.com/icons/system/ios-7/time-and-date-clock.html

#import <UIKit/UIKit.h>
#import "Bookings+CoreDataClass.h"
#import "BookingDataModel.h"

@interface ExistingBookingsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate>

{
    NSFetchedResultsController *fetchedResultsController;
    NSManagedObjectContext *managedObjectContext;
    NSArray *existingBookings;
}

@property (weak, nonatomic) IBOutlet UITableView *bookingTableView;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic,strong)  NSArray *fetchedObjects;


@property (nonatomic, strong) BookingDataModel *data;


@end
 

