//
//  SelectType.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
// NSUserDefaults code acccessed from http://www.ios-blog.co.uk/tutorials/objective-c/storing-data-with-nsuserdefaults/

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
//picker view rows set to restaurant types

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component{
    if (row == 0){
        self.typeSelected = 0;
        
    } else if (row == 1){
        self.typeSelected = 1;
        
    }else if (row == 2){
        self.typeSelected = 2;
        
    }else if (row == 3){
        self.typeSelected = 3;
        
    }else if (row == 4){
        self.typeSelected = 4;
    }
}
//type selected determined from row selection

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component{
    return 5;
}
//set number of picker view rows

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
//sets number of components for picker

- (IBAction)selectButtonPress:(UIButton *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
        [defaults setInteger:self.typeSelected forKey:@"type"];
        [defaults synchronize];
    //type selected value saved in user defaults to change table view data displayed
}
@end
