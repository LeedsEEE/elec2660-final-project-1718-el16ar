//
//  Bookings+CoreDataProperties.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 30/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Bookings+CoreDataProperties.h"

@implementation Bookings (CoreDataProperties)

+ (NSFetchRequest<Bookings *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Bookings"];
}

@dynamic date;
@dynamic restaurant;
@dynamic noOfGuests;

@end
