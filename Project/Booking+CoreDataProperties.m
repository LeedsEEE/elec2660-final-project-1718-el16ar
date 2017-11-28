//
//  Booking+CoreDataProperties.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Booking+CoreDataProperties.h"

@implementation Booking (CoreDataProperties)

+ (NSFetchRequest<Booking *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"BookingEntity"];
}

@dynamic date;
@dynamic noOfGuests;
@dynamic restaurant;

@end
