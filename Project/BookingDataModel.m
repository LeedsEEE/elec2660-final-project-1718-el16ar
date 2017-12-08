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
        
        self.ExistingBookings = [NSMutableArray array];
        
    NSUserDefaults *restaurantStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *numStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *dateStore = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *timeStore = [NSUserDefaults standardUserDefaults];
    //user defaults declared to get booking data
        
  for (i = 0; i <= 5; i++) {
      //for all 5 keys
      
    self.Restaurant = [restaurantStore stringForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]];
    self.noOfGuests = [numStore integerForKey:[NSString stringWithFormat:@"numberKey%d",i]];
    self.Date = [dateStore stringForKey:[NSString stringWithFormat:@"dateKey%d",i]];
    self.Time = [timeStore stringForKey:[NSString stringWithFormat:@"timeKey%d",i]];
    //get data from user defaults for each key
      
      if (i == 0) {
      
          if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL) {
        //check key is not empty
              
                    Booking *key0 = [[Booking alloc] init];
                    key0.restaurant = self.Restaurant;
                    key0.noOfGuests = self.noOfGuests;
                    key0.date = self.Date;
                    key0.time = self.Time;
                    key0.key = i;
                    [self.ExistingBookings addObject:key0];
                    //booking object created for key 0
    
          }
          
      } else if (i==1){
    
          if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL) {
              //check key is not empty

                    Booking *key1 = [[Booking alloc] init];
                    key1.restaurant = self.Restaurant;
                    key1.noOfGuests = self.noOfGuests;
                    key1.date = self.Date;
                    key1.time = self.Time;
                    key1.key = i;
                    [self.ExistingBookings addObject:key1];
                    //booking object created for key 1

    }

      } else if (i==2){
          
          if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL) {
              //check key is not empty
              
                    Booking *key2 = [[Booking alloc] init];
                    key2.restaurant = self.Restaurant;
                    key2.noOfGuests = self.noOfGuests;
                    key2.date = self.Date;
                    key2.time = self.Time;
                    key2.key = i;
                    [self.ExistingBookings addObject:key2];
                    //booking object created for key 2
              
    }
    
      } else if (i==3) {
      
          if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL) {
              //check key is not empty
              
                    Booking *key3 = [[Booking alloc] init];
                    key3.restaurant = self.Restaurant;
                    key3.noOfGuests = self.noOfGuests;
                    key3.date = self.Date;
                    key3.time = self.Time;
                    key3.key = i;
                    [self.ExistingBookings addObject:key3];
                    //booking object created for key 3

    }
          
        } else if (i==4) {
              
            if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"restaurantValKey%d",i]] != NULL) {
                //check key is not empty
                
                    Booking *key4 = [[Booking alloc] init];
                    key4.restaurant = self.Restaurant;
                    key4.noOfGuests = self.noOfGuests;
                    key4.date = self.Date;
                    key4.time = self.Time;
                    key4.key = i;
                    [self.ExistingBookings addObject:key4];
                    //booking object created for key 4
                
        }

      }
    }
      
  }
    return self;
}

@end
