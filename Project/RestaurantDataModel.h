//
//  RestaurantDataModel.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Restaurant.h"

@interface RestaurantDataModel : NSObject
@property (strong, nonatomic) NSMutableArray *ItalianRestaurants;
@property (strong, nonatomic) NSMutableArray *GreekRestaurants;
@property (strong, nonatomic) NSMutableArray *ChineseRestaurants;
@property (strong, nonatomic) NSMutableArray *IndianRestaurants;
@property (strong, nonatomic) NSMutableArray *ThaiRestaurants;

@end
