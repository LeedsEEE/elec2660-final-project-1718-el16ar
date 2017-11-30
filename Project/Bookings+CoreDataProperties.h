//
//  Bookings+CoreDataProperties.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 30/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Bookings+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Bookings (CoreDataProperties)

+ (NSFetchRequest<Bookings *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *date;
@property (nullable, nonatomic, copy) NSString *restaurant;
@property (nonatomic,  nonatomic, copy) NSString *noOfGuests;

@end

NS_ASSUME_NONNULL_END
