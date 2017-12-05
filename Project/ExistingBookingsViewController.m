//
//  ExistingBookingsViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
/*
#import "ExistingBookingsViewController.h"
#import "Bookings+CoreDataClass.h"

@interface ExistingBookingsViewController ()

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end

@implementation ExistingBookingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [[self.fetchedResultsController sections] count];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        id <NSFetchedResultsSectionInfo> sectionInfo = [[self.fetchedResultsController sections] objectAtIndex:section];
        return [sectionInfo numberOfObjects];
}

- (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
Bookings *bookings = [self.fetchedResultsController objectAtIndexPath:indexPath];
//cell.textLabel.text = bookingEntity.restaurantName;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{

    NSArray *fetchedObjects;
    NSManagedObjectContext *context = [self managedObjectContext];
    NSFetchRequest *fetch = [[NSFetchRequest alloc] init];
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"InstallProject"  inManagedObjectContext: context];
    [fetch setEntity:entityDescription];
    [fetch setPredicate:[NSPredicate predicateWithFormat:@"(ANY ProjID contains[cd] %@)",projIDString]];
    NSError * error = nil;
    fetchedObjects = [context executeFetchRequest:fetch error:&error];
    
    if([fetchedObjects count] == 1)
        return [fetchedObjects objectAtIndex:0];
    else
        return nil;

    
    - (NSFetchedResultsController *)fetchedResultsController {
      if (_fetchedResultsController != nil) {
           return _fetchedResultsController;
       }
        
        // Create and configure a fetch request with the Booking entity.
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
        NSEntityDescription *bookings = [NSEntityDescription entityForName:@"Bookings" inManagedObjectContext:self.context];
        [fetchRequest setEntity:bookings];
        
        // Create and initialize the fetch results controller.
        _fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.context sectionNameKeyPath:@"artist" cacheName:@"Root"];
        _fetchedResultsController.delegate = self;
        
        // Memory management
        
        return _fetchedResultsController;
    }
    
    - (void)controllerWillChangeContent:(NSFetchedResultsController *)controller
    {
        // The fetch controller is about to start sending change notifications, so prepare the table view for updates.
        [self.tableView beginUpdates];
    }
    
    
    - (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(NSIndexPath *)newIndexPath
    {
        UITableView *tableView = self.tableView;
        
        switch(type) {
                
            case NSFetchedResultsChangeInsert:
                [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
                break;
                
            case NSFetchedResultsChangeDelete:
                [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
                break;
                
            case NSFetchedResultsChangeUpdate:
                [self configureCell:[tableView cellForRowAtIndexPath:indexPath] atIndexPath:indexPath];
                break;
                
            case NSFetchedResultsChangeMove:
                [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
                [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
                break;
        }
    }
    
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
    

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
*/
