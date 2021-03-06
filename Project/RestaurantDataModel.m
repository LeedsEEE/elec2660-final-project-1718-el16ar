//
//  RestaurantDataModel.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// ALL INFO FROM https://www.google.co.uk/maps/

#import "RestaurantDataModel.h"

@implementation RestaurantDataModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        
#pragma mark - Italian Restaurants

        self.ItalianRestaurants = [NSMutableArray array];
        //Italian restaurants array
        
        Restaurant *bellaItalia = [[Restaurant alloc] init];
        bellaItalia.restaurantName = @"Bella Italia";
        bellaItalia.restaurantAddress = @"145 Briggate, Leeds LS1 6BR";
        bellaItalia.restaurantType = @"Italian";
        bellaItalia.restaurantImage = @"BellaItalia.jpeg";
        bellaItalia.restaurantDescription = @"Chain venue for Italian pasta, pizza and grill dishes, with a special children's menu";
        [self.ItalianRestaurants addObject:bellaItalia];
        
        Restaurant *Prezzo = [[Restaurant alloc] init];
        Prezzo.restaurantName = @"Prezzo";
        Prezzo.restaurantAddress = @"16 - 18 The Headrow, Leeds LS1 8TL";
        Prezzo.restaurantType = @"Italian";
        Prezzo.restaurantImage = @"Prezzo.jpeg";
        Prezzo.restaurantDescription = @"Casual Italian chain restaurant for stone-baked pizzas and classic pastas, plus seperate kids' menu";
        [self.ItalianRestaurants addObject:Prezzo];
        
        Restaurant *salvos = [[Restaurant alloc] init];
        salvos.restaurantName = @"Salvo's";
        salvos.restaurantAddress = @"115 & 107 Otley Rd, Leeds LS6 3PX";
        salvos.restaurantType = @"Italian";
        salvos.restaurantImage = @"salvos.jpg";
        salvos.restaurantDescription = @"Buzzing restaurant serving classical Italian dishes with modern touches served in stylish surrounds.";
        [self.ItalianRestaurants addObject:salvos];
       
        Restaurant *primo = [[Restaurant alloc] init];
        primo.restaurantName = @"Primo Ristorante";
        primo.restaurantAddress = @"West Point, 29 Wellington St, Leeds LS1 4JY";
        primo.restaurantType = @"Italian";
        primo.restaurantImage = @"primo.jpeg";
        primo.restaurantDescription = @"Italian and Mediterranean staples in a stylish modern restaurant with booth and terrace seating.";
        [self.ItalianRestaurants addObject:primo];

#pragma mark - Greek Restaurants
        
        self.GreekRestaurants = [NSMutableArray array];
        //Greek restaurants array
        
        Restaurant *theOliveTree = [[Restaurant alloc] init];
        theOliveTree.restaurantName = @"The Olive Tree";
        theOliveTree.restaurantAddress = @"74-76 Otley Rd, Leeds LS6 4BA";
        theOliveTree.restaurantType = @"Greek";
        theOliveTree.restaurantImage = @"theOliveTree.jpeg";
        theOliveTree.restaurantDescription = @"Concise menu of classic Greek dishes served in modern, simply decorated dining room";
        [self.GreekRestaurants addObject:theOliveTree];

        Restaurant *theOlive = [[Restaurant alloc] init];
        theOlive.restaurantName = @"The Olive";
        theOlive.restaurantAddress = @"188 - 190 Harrogate Rd, Leeds LS7 4NZ";
        theOlive.restaurantType = @"Greek";
        theOlive.restaurantImage = @"theOlive.jpg";
        theOlive.restaurantDescription = @"Concise menu of Greek favourites in a bustling contemporary dining room with special early menu";
        [self.GreekRestaurants addObject:theOlive];
        
       Restaurant *agora = [[Restaurant alloc] init];
        agora.restaurantName = @"The Agora";
        agora.restaurantAddress = @"207 - 209 New Rd Side, Horsforth, Leeds LS18 4DR";
        agora.restaurantType = @"Greek";
        agora.restaurantImage = @"agora.jpg";
        agora.restaurantDescription = @"Unassuming family-run eatery serving a menu of Greek and Turkish dishes, plus homemade baklava.";
        [self.GreekRestaurants addObject:agora];
        
        Restaurant *oliveBranch = [[Restaurant alloc] init];
        oliveBranch.restaurantName = @"The Olive Branch";
        oliveBranch.restaurantAddress = @"139 Street Lane, Leeds LS8 1AA";
        oliveBranch.restaurantType = @"Greek";
        oliveBranch.restaurantImage = @"oliveBranch.jpeg";
        oliveBranch.restaurantDescription = @"Turkish and Mediterranean flavours in a bijou restaurant with wood panelling, plus pavement tables.";
        [self.GreekRestaurants addObject:oliveBranch];
        
#pragma mark - Chinese Restaurants
        
        self.ChineseRestaurants = [NSMutableArray array];
        //Chinese restaurants array 
        
        Restaurant *maxis = [[Restaurant alloc] init];
        maxis.restaurantName = @"Maxi's Restaurant";
        maxis.restaurantAddress = @"6 Bingley St, Leeds LS3 1LX";
        maxis.restaurantType = @"Chinese";
        maxis.restaurantImage = @"maxis.jpeg";
        maxis.restaurantDescription = @"Dragon and lion carvings fill this Chinese restaurant serving a Cantonese and Pekingese menu.";
        [self.ChineseRestaurants addObject:maxis];
        
        Restaurant *crown = [[Restaurant alloc] init];
        crown.restaurantName = @"Crown Chinese Restaurant";
        crown.restaurantAddress = @"Academy Building, Gower St, Leeds LS2 7PX";
        crown.restaurantType = @"Chinese";
        crown.restaurantImage = @"crown.jpeg";
        crown.restaurantDescription = @"Simple, unfussy Chinese buffet restaurant for all-you-can-eat dining.";
        [self.ChineseRestaurants addObject:crown];
        
        Restaurant *orientalCity = [[Restaurant alloc] init];
        orientalCity.restaurantName = @"Oriental City Restaurant";
        orientalCity.restaurantAddress = @"30-36 Cross Stamford St, Leeds LS7 1BA";
        orientalCity.restaurantType = @"Chinese";
        orientalCity.restaurantImage = @"orientalCity.jpg";
        orientalCity.restaurantDescription = @"Extensive Chinese menu with lunchtime dim sum served in an elegant dining room and Halal options.";
        [self.ChineseRestaurants addObject:orientalCity];
        
#pragma mark - Indian Restaurants
        
        self.IndianRestaurants = [NSMutableArray array];
        //Indian restaurants
        
        Restaurant *baltiKing = [[Restaurant alloc] init];
        baltiKing.restaurantName = @"Balti King";
        baltiKing.restaurantAddress = @"69 Raglan Rd, Leeds LS2 9DZ";
        baltiKing.restaurantType = @"Indian";
        baltiKing.restaurantImage = @"baltiKing.jpg";
        baltiKing.restaurantDescription = @"Indian curry restaurant with a classic menu and simple, modern decor, plus takeaway option.";
        [self.IndianRestaurants addObject:baltiKing];
        
        Restaurant *kerala = [[Restaurant alloc] init];
        kerala.restaurantName = @"Kerala Restaurant";
        kerala.restaurantAddress = @"2 Eastgate, Leeds LS2 7JL";
        kerala.restaurantType = @"Indian";
        kerala.restaurantImage = @"kerala.jpg";
        kerala.restaurantDescription = @"Colourful South Indian restaurant with carved wooden chairs, for traditional Keralan specialities.";
        [self.IndianRestaurants addObject:kerala];
        
        Restaurant *tharavadu = [[Restaurant alloc] init];
        tharavadu.restaurantName = @"Tharavadu Restaurant";
        tharavadu.restaurantAddress = @"7-8 Mill Hill, Leeds LS1 5DQ";
        tharavadu.restaurantType = @"Indian";
        tharavadu.restaurantImage = @"tharavadu.jpg";
        tharavadu.restaurantDescription = @"Indian cuisine from Kerala in a modern venue with floor-to-ceiling windows and polished wood floors.";
        [self.IndianRestaurants addObject:tharavadu];
        
        
#pragma mark - Thai Restaurants
        
        self.ThaiRestaurants = [NSMutableArray array];
        //Thai restaurants
        
        Restaurant *thaiEdge = [[Restaurant alloc] init];
        thaiEdge.restaurantName = @"Thai Edge Restaurant";
        thaiEdge.restaurantAddress = @"7 Calverley St, Leeds LS1 3DA";
        thaiEdge.restaurantType = @"Thai";
        thaiEdge.restaurantImage = @"thaiEdge.jpg";
        thaiEdge.restaurantDescription = @"Thai stonework, lamps and chic upholstered chairs for upscale food and chef's master classes.";
        [self.ThaiRestaurants addObject:thaiEdge];
        
        Restaurant *lineThai = [[Restaurant alloc] init];
        lineThai.restaurantName = @"Line Thai Oriental";
        lineThai.restaurantAddress = @"39 Great George St, Leeds LS1 3BB";
        lineThai.restaurantType = @"Thai";
        lineThai.restaurantImage = @"lineThai.jpg";
        lineThai.restaurantDescription = @"Visit us in Leeds for the very best Thai street food flavours and a great menu of well-known and specific regional dishes including - Papaya salad, Larb, noodle soup and Tom Yum soup. ";
        [self.ThaiRestaurants addObject:lineThai];
                                
        Restaurant *sukhothai = [[Restaurant alloc] init];
        sukhothai.restaurantName = @"Sukhothai Restaurant";
        sukhothai.restaurantAddress = @"15 S Parade, Leeds LS1 5QS";
        sukhothai.restaurantType = @"Thai";
        sukhothai.restaurantImage = @"sukothai.jpg";
        sukhothai.restaurantDescription = @"Bamboo screens and Asian artwork decks out the interior of this Thai restaurant serving 200 dishes.";
        [self.ThaiRestaurants addObject:sukhothai];
        
    }
    return self;
}
@end
