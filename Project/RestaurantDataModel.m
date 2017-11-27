//
//  RestaurantDataModel.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RestaurantDataModel.h"

@implementation RestaurantDataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ItalianRestaurants = [NSMutableArray array];
        //Italian restaurants array
        
        Restaurant *bellaItalia = [[Restaurant alloc] init];
        bellaItalia.restaurantName = @"Bella Italia";
        bellaItalia.restaurantAddress = @"145 Briggate, Leeds LS1 6BR";
        bellaItalia.restaurantType = @"Italian";
        bellaItalia.restaurantDescription = @"Chain venue for Italian pasta, pizza and grill dishes, with a special children's menu";
        [self.ItalianRestaurants addObject:bellaItalia];
        
        Restaurant *Prezzo = [[Restaurant alloc] init];
        Prezzo.restaurantName = @"Prezzo";
        Prezzo.restaurantAddress = @"16 - 18 The Headrow, Leeds LS1 8TL";
        Prezzo.restaurantType = @"Italian";
        Prezzo.restaurantDescription = @"Casual Italian chain restaurant for stone-baked pizzas and classic pastas, plus seperate kids' menu";
        [self.ItalianRestaurants addObject:Prezzo];

        self.GreekRestaurants = [NSMutableArray array];
        //Greek restaurants array
        
        Restaurant *theOliveTree = [[Restaurant alloc] init];
        theOliveTree.restaurantName = @"The Olive Tree";
        theOliveTree.restaurantAddress = @"74-76 Otley Rd, Leeds LS6 4BA";
        theOliveTree.restaurantType = @"Greek";
        theOliveTree.restaurantDescription = @"Concise menu of classic Greek dishes served in modern, simply decorated dining room";
        [self.GreekRestaurants addObject:theOliveTree];

        Restaurant *theOlive = [[Restaurant alloc] init];
        theOlive.restaurantName = @"The Olive";
        theOlive.restaurantAddress = @"188 - 190 Harrogate Rd, Leeds LS7 4NZ";
        theOlive.restaurantType = @"Greek";
        theOlive.restaurantDescription = @"Concise menu of Greek favourites in a bustling contemporary dining room with special early menu";
        [self.GreekRestaurants addObject:theOlive];
        
    }
    return self;
}
@end
