//
//  SelectType.h
//  Project
//
//  Created by Andrew Roy [el16ar] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// tab bar icon from: http://www.iconarchive.com/show/windows-8-icons-by-icons8/Ecommerce-Food-icon.html

#import <UIKit/UIKit.h>

@interface SelectTypeViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *RestaurantTypePicker;
@property NSInteger typeSelected;
@property (weak, nonatomic) IBOutlet UIButton *selectRestaurantButton;

@end

