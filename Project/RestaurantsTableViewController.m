//
//  RestaurantsTableViewController.m
//  Project
//
//  Created by Andrew Roy [el16ar] on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RestaurantsTableViewController.h"
#import "SelectTypeViewController.h"

@interface RestaurantsTableViewController ()

@end

@implementation RestaurantsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.type = [defaults integerForKey:@"type"];
    //selected type int read from NSUserDefaults
    
    NSLog(@"Selected type = %li", (long)self.type);

    self.data = [[RestaurantDataModel alloc] init];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.§  
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger NoOfRows;
        if (self.type == 0) {
        //if restaurant selected is Italian
            
        NoOfRows = self.data.ItalianRestaurants.count;
        //counts number of Italian elements
            
                 } else if(self.type == 1) {
        //if restaurant selected is Greek
        
            NoOfRows = self.data.GreekRestaurants.count;
        //counts number of Greek elements
            
         } else if(self.type == 2) {
        //if restaurant selected is Chinese

        NoOfRows = self.data.ChineseRestaurants.count;
        //counts number of Chinese elements
            
         } else if(self.type == 3) {
        //if restaurant selected is Indian

        NoOfRows = self.data.IndianRestaurants.count;
        //counts number of Indian elements   
            
        } else if(self.type == 4) {
        //if restaurant selected is Thai

        NoOfRows = self.data.ThaiRestaurants.count;
        //counts number of Thai elements   
            
        }
    return NoOfRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RestaurantCell" forIndexPath:indexPath];
    
    if (self.type == 0) {
        //if restaurant selected is Italian

        Restaurant *tempRestaurant = [self.data.ItalianRestaurants objectAtIndex:indexPath.row];
            //temporary storage of data from array
            cell.textLabel.text = tempRestaurant.restaurantName;
            //title entered for each entry
        
    } else if(self.type == 1) {
        //if restaurant selected is Greek
        
            Restaurant *tempRestaurant = [self.data.GreekRestaurants objectAtIndex:indexPath.row];
            //temporary storage of data from array
            cell.textLabel.text = tempRestaurant.restaurantName;
            //title entered for each entry
        
      } else if(self.type == 2) {
        //if restaurant selected is Chinese
        
            Restaurant *tempRestaurant = [self.data.ChineseRestaurants objectAtIndex:indexPath.row];
            //temporary storage of data from array
            cell.textLabel.text = tempRestaurant.restaurantName;
            //title entered for each entry
        
        } else if(self.type == 3) {
        //if restaurant selected is Indian
        
            Restaurant *tempRestaurant = [self.data.IndianRestaurants objectAtIndex:indexPath.row];
            //temporary storage of data from array
            cell.textLabel.text = tempRestaurant.restaurantName;
            //title entered for each entry
        
         } else if(self.type == 4) {
        //if restaurant selected is Thai
        
            Restaurant *tempRestaurant = [self.data.ThaiRestaurants objectAtIndex:indexPath.row];
            //temporary storage of data from array
            cell.textLabel.text = tempRestaurant.restaurantName;
            //title entered for each entry
        
            }
    return cell;

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"restaurantSegue"]) {
        
       RestaurantViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
            if (self.type == 0) {
                //if restaurant selected is Italian
                
                Restaurant *tempRestaurant = [self.data.ItalianRestaurants objectAtIndex:indexPath.row];
                destinationViewController.restaurant = tempRestaurant;
                
            }else if (self.type == 1) {
                //if restaurant selected is Greek
                
                Restaurant *tempRestaurant = [self.data.GreekRestaurants objectAtIndex:indexPath.row];
                destinationViewController.restaurant = tempRestaurant;
                
             }else if (self.type == 2) {
                //if restaurant selected is Chinese
                
                Restaurant *tempRestaurant = [self.data.ChineseRestaurants objectAtIndex:indexPath.row];
                destinationViewController.restaurant = tempRestaurant;
                
               }else if (self.type == 3) {
                //if restaurant selected is Indian
                
                Restaurant *tempRestaurant = [self.data.IndianRestaurants objectAtIndex:indexPath.row];
                destinationViewController.restaurant = tempRestaurant;
                
               }else if (self.type == 4) {
                //if restaurant selected is Thai
                
                Restaurant *tempRestaurant = [self.data.ThaiRestaurants objectAtIndex:indexPath.row];
                destinationViewController.restaurant = tempRestaurant;
            }
        }
    }

@end
