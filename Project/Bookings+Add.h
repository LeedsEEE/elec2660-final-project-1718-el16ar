//
//  Bookings+Add.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 30/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Bookings+CoreDataClass.h"

@interface Bookings (Add)

+ (Bookings *)addBookingEntityInfoFromDictionary:(NSDictionary *)bookingEntityInfo;

@end
