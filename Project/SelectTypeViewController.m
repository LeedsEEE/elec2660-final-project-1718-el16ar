//
//  SelectType.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SelectTypeViewController.h"

@interface SelectTypeViewController ()

@end

@implementation SelectTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //self.restaurantTypePicker.delegate = self;
  //  self.restaurantTypePicker.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    NSString *coordinate = [NSString stringWithFormat: @"%ld, %ld", component, row];
    
    return coordinate;
   }
//content method for picker view

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    
}
//selection action method for picker view

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 4;
}
//sets number of picker view rows

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//sets number of components for picker

@end
