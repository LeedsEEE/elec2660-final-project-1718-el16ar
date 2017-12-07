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

        int i;
        NSString *key;
        
        self.ExistingBookings = [NSMutableArray array];

        
        
        NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
        
        
       // while ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] != NULL) {
            
    
        
  //  for(i=0; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] != nil); i++) {
    
        
    self.Restaurant = [restaurantStore stringForKey:@"restaurantKey0"];
    self.noOfGuests = [numStore integerForKey:@"numberKey0"];
    self.Date = [dateStore stringForKey:@"dateKey0"];
    
    Booking *key0 = [[Booking alloc] init];
    key0.restaurant = self.Restaurant;
    key0.noOfGuests = self.noOfGuests;
    key0.date = self.Date;
    key0.key = 0;
    [self.ExistingBookings addObject:key0];
        
    self.Restaurant = [restaurantStore stringForKey:@"restaurantKey1"];
    self.noOfGuests = [numStore integerForKey:@"numberKey1"];
    self.Date = [dateStore stringForKey:@"dateKey1"];
        
    Booking *key1 = [[Booking alloc] init];
    key1.restaurant = self.Restaurant;
    key1.noOfGuests = self.noOfGuests;
    key1.date = self.Date;
    key1.key = 1;
    [self.ExistingBookings addObject:key1];

    self.Restaurant = [restaurantStore stringForKey:@"restaurantKey2"];
    self.noOfGuests = [numStore integerForKey:@"numberKey2"];
    self.Date = [dateStore stringForKey:@"dateKey2"];
        
    Booking *key2 = [[Booking alloc] init];
    key2.restaurant = self.Restaurant;
    key2.noOfGuests = self.noOfGuests;
    key2.date = self.Date;
    key2.key = 2;
    [self.ExistingBookings addObject:key2];
    
    self.Restaurant = [restaurantStore stringForKey:@"restaurantKey3"];
    self.noOfGuests = [numStore integerForKey:@"numberKey3"];
    self.Date = [dateStore stringForKey:@"dateKey3"];
        
    Booking *key3 = [[Booking alloc] init];
    key3.restaurant = self.Restaurant;
    key3.noOfGuests = self.noOfGuests;
    key3.date = self.Date;
    [self.ExistingBookings addObject:key3];

        
        
    }
    return self;
}

@end
