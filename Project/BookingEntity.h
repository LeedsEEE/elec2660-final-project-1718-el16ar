//
//  BookingEntity.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 27/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface BookingEntity : NSManagedObject

@property (nonatomic, retain) NSString * restaurant;
@property (nonatomic, retain) NSString * noOfGuests;
//@property (nonatomic, retain) NSInteger * noOfGuests;
@property (nonatomic, retain) NSDate * date;

@end
