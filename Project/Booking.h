//
//  Booking.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//Reservation referred to as booking in code for convience

#import <Foundation/Foundation.h>

@interface Booking : NSObject

@property (nonatomic, strong) NSString *date;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *restaurant;
@property NSInteger noOfGuests;
@property NSInteger key;

@end
