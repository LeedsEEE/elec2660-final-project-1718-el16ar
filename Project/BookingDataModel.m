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

        int i =0;
        NSString *key;
        
        self.ExistingBookings = [NSMutableArray array];

        
        
        NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
        
        
       // while ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] != NULL) {
            
            
           self.Restaurant = [restaurantStore stringForKey:@"Key1"];
        
         //   NSLog(@"%@", self.Restaurant);
            
           // key = [NSString stringWithFormat:@"Key%d",i];
        
            
    Booking *key1 = [[Booking alloc] init];
    key1.restaurant = self.Restaurant;
    key1.noOfGuests = @"4";
    [self.ExistingBookings addObject:key1];
        
                Booking *key2 = [[Booking alloc] init];
                key2.restaurant = @"Rest2";
                key2.noOfGuests = @"4";
                [self.ExistingBookings addObject:key2];

            
        
       // }
        
        
        
     //   NSUserDefaults *StoreNum = [NSUserDefaults standardUserDefaults];
//self.noOfUsers = [StoreNum integerForKey:@"Num"];
       
        /*
        Booking *ex1 = [[Booking alloc] init];
        ex1.restaurant = self.Restaurant;
        ex1.noOfGuests = @"4";
        [self.ExistingBookings addObject:ex1];

        Booking *ex2 = [[Booking alloc] init];
        ex2.restaurant = @"Salvo's";
        ex2.noOfGuests = @"2";
        [self.ExistingBookings addObject:ex2];
        */
        
       // for (i = 0; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"%d",i]] == nil; i++) {
            
        //    [StoreRestaurant setObject:restaurantName forKey:[NSString stringWithFormat:@"%d",i]];
        //    [StoreNum setInteger:noOfGuests forKey:[NSString stringWithFormat:@"%d",i]];
         //   [StoreRestaurant synchronize];

       // [restaurantStore objectForKey:[NSString stringWithFormat:@"Key2"]]
        
        
    }
    return self;
}

@end
