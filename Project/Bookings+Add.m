//
//  Bookings+Add.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 30/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Bookings+Add.h"
#import "AppDelegate.h"

@implementation Bookings (Add)

+ (Bookings *)addBookingEntityInfoFromDictionary:(NSDictionary *)bookingEntityInfo

{
    AppDelegate *appDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    NSManagedObjectContext *context = [[appDelegate persistentContainer] viewContext];
    
    Bookings *bookingEntity = nil;
    
    
    
    //New object created
    bookingEntity = [NSEntityDescription insertNewObjectForEntityForName:@"BookingEntity" inManagedObjectContext:context];
    
    bookingEntity.restaurant = [bookingEntityInfo valueForKey: @"restaurant"];
    bookingEntity.date = [bookingEntityInfo valueForKey: @"date"];
    bookingEntity.noOfGuests = [bookingEntityInfo valueForKey: @"noOfGuests"];
    
    return bookingEntity;
}

@end
