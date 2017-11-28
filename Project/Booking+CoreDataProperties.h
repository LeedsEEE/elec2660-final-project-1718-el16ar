//
//  Booking+CoreDataProperties.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "Booking+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Booking (CoreDataProperties)

+ (NSFetchRequest<Booking *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *date;
@property (nonatomic) int32_t noOfGuests;
@property (nullable, nonatomic, copy) NSString *restaurant;

@end

NS_ASSUME_NONNULL_END
