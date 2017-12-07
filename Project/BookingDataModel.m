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
        //Italian restaurants array
        
        
        NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
        NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
        
        
        for (i = 0;[[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] != nil; i++) {
            
            
            self.Restaurant = [restaurantStore objectForKey:[NSString stringWithFormat:@"Key%d",i]];
            key = [NSString stringWithFormat:@"Key%d",i];
            
        //   Booking * [[NSString stringWithFormat:@"Key%d",i] = [[Booking alloc] init];
      //  [NSString stringWithFormat:@"Key%d",i].restaurant = self.Restaurant;
     //   [NSString stringWithFormat:@"Key%d",i].noOfGuests = @"4";
            [self.ExistingBookings addObject:[NSString stringWithFormat:@"Key%d",i]];
            
        }
        if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"Key%d",i]] == NULL) {
            
            
            [restaurantStore synchronize];
            [numStore synchronize];
            [dateStore synchronize];

        }
        
        
        
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
        
            NSLog(@"Booking stored at key: %d", i);

        
        
        
    }
    return self;
}

@end
