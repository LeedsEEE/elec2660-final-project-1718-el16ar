//
//  BookingDataModel.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 06/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "BookingDataModel.h"

@implementation BookingDataModel
- (instancetype)init
{
    self = [super init];
    if (self) {

        self.ExistingBookings = [NSMutableArray array];
        //Italian restaurants array
        
        Booking *ex1 = [[Booking alloc] init];
        ex1.restaurant = @"Bella Italia";
        ex1.noOfGuests = @"2";
        [self.ExistingBookings addObject:ex1];

        Booking *ex2 = [[Booking alloc] init];
        ex2.restaurant = @"Salvo's";
        ex2.noOfGuests = @"2";
        [self.ExistingBookings addObject:ex2];
        
    }
    return self;
}

@end
