//
//  BookingDataModel.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Booking.h"

@interface BookingDataModel : NSObject

@property (strong, nonatomic) NSMutableArray *ExistingBookings;

@property NSInteger noOfGuests;
@property NSString *Restaurant;
@property NSString *Date;
@property NSString *Time;


@end
