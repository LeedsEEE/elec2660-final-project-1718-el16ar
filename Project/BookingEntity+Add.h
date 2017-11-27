//
//  BookingEntity+Add.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BookingEntity.h"
#import "AppDelegate.h"

@interface BookingEntity (Add)

+ (BookingEntity *)addBookingEntityInfoFromDictionary:(NSDictionary *)bookingEntityInfo;

@end
