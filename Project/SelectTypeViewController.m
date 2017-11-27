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
    
    self.RestaurantTypePicker.delegate = self;
    self.RestaurantTypePicker.dataSource = self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component{
    if (row == 0) {
        return [NSString stringWithFormat:@"Italian"];
    } else if (row == 1) {
        return [NSString stringWithFormat:@"Greek"];
    } else if (row ==2) {
        return [NSString stringWithFormat:@"Chinese"];
    } else if (row ==3) {
        return [NSString stringWithFormat:@"Indian"];
    } else {
        return [NSString stringWithFormat:@"Thai"];
    }
}
//content method for picker view

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    if (row == 0){
        _typeSelected = 0;
    } else if (row == 1){
        _typeSelected = 1;
    }else if (row == 2){
        _typeSelected = 2;
    }else if (row == 3){
        _typeSelected = 3;
    }else if (row == 4){
        _typeSelected = 4;
    }
}
//selection action method for picker view

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 5;
}
//sets number of picker view rows

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//sets number of components for picker

@end
