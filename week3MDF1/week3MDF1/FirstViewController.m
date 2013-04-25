//
//  FirstViewController.m
//  week3MDF1
//
//  Created by Cameron Mozie on 4/18/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import "FirstViewController.h"
#import <MapKit/MapKit.h>
#import "geoDetailViewController.h"
#import "myMapAnnotation.h"
#import "BusinessNfo.h"
#import "DataManager.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Businesses", @"Businesses");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
        
        //BusinessNfo *info = [[BusinessNfo alloc] initWithTitle:@"Marquita's Hair Salon" loc:CLLocationCoordinate2DMake(39.2833f, -76.6167f)];
        //[buisnesses addObject:info];
        
         //buisnesses = [[NSMutableArray alloc] initWithObjects:@"Maquitas Hair Salon",@"Lenny's Carryout",@"Shoe Club NY",@"Phillies Cheesesteaks",@"Dougs Hot Dogs",@"Carolina's Diner",@"Cameron's Anime",@"Kennys Barbershop",@"Sports Galore",@"Play Time", nil];
        
        //locations = [[NSMutableArray alloc]initWithObjects:@"Baltimore,MD",@"Glenarden, MD",@"Brooklyn, NY",@"Philadelphia, PA",@"Chicago, IL",@"Anderson, SC",@"Alexandria, VA",@"San Francisco, CA",@"Boston, MA",@"Atlanta, GA", nil];
    
        
        
    }
    return self;
    

}
							
- (void)viewDidLoad
{
    
    
    //adds business name and coordinates to variable for adding to array
    BusinessNfo *business1 = [[BusinessNfo alloc] initWithTitle:@"Marquita's Hair Salon" loc:CLLocationCoordinate2DMake(39.2833f, -76.6167f)];
    BusinessNfo *business2 = [[BusinessNfo alloc] initWithTitle:@"Lenny's Carryout" loc:CLLocationCoordinate2DMake(38.3018f, -77.4708f)];
    BusinessNfo *business3 = [[BusinessNfo alloc] initWithTitle:@"Shoe Club NY" loc:CLLocationCoordinate2DMake(40.6500f, -73.9500f)];
    BusinessNfo *business4 = [[BusinessNfo alloc] initWithTitle:@"Phillies Cheesesteaks" loc:CLLocationCoordinate2DMake(39.9522f, -75.1642f)];
    BusinessNfo *business5 = [[BusinessNfo alloc] initWithTitle:@"Doug's Hot Dogs" loc:CLLocationCoordinate2DMake(40.2169f, -74.7433f)];
    BusinessNfo *business6 = [[BusinessNfo alloc] initWithTitle:@"Carolines Diner" loc:CLLocationCoordinate2DMake(34.5033f, -82.6503f)];
    BusinessNfo *business7 = [[BusinessNfo alloc] initWithTitle:@"Cameron's Anime" loc:CLLocationCoordinate2DMake(38.8162f, -77.0713f)];
     BusinessNfo *business8 = [[BusinessNfo alloc] initWithTitle:@"Kennys BarberShop" loc:CLLocationCoordinate2DMake(35.7719f, -78.6389f)];
    BusinessNfo *business9 = [[BusinessNfo alloc] initWithTitle:@"Sports Galore" loc:CLLocationCoordinate2DMake(42.3583f, -71.0603f)];
    BusinessNfo *business10 = [[BusinessNfo alloc] initWithTitle:@"Play Time" loc:CLLocationCoordinate2DMake(33.7489f, -84.3881f)];
    
    
    
    
    //singleton
    DataManager *manager = [DataManager sharedDataManager];//setting singleton to manager for manipulation
    
    if (manager != nil) {
        
        NSMutableArray *businesses = manager.businesses;//an array that will hold the various businesses
        
        if (businesses != nil) {
            //adds location/business name to array
            [businesses addObject:business1];
            [businesses addObject:business2];
            [businesses addObject:business3];
            [businesses addObject:business4];
            [businesses addObject:business5];
            [businesses addObject:business6];
            [businesses addObject:business7];
            [businesses addObject:business8];
            [businesses addObject:business9];
            [businesses addObject:business10];
            
        }
       
    }
    
    doneButn.hidden = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    DataManager *dataManager = [DataManager sharedDataManager];//singleton 
    
    NSMutableArray *newArray = dataManager.businesses;//stores business data to array

    
    return [newArray count];//returns objects within the array 
   
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
       
       
    }
    
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *textArray = dataManager.businesses;
    
     cell.textLabel.text = [[textArray objectAtIndex:indexPath.row]locationName];//sets the cell text to the object in the array ar the index with locationName
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    geoDetailViewController *locationView = [[geoDetailViewController alloc]initWithNibName:@"geoDetailView" bundle:nil];
    
    
    NSLog(@"row = %d", indexPath.row);
    DataManager *dataManager = [DataManager sharedDataManager];
    NSMutableArray *selectArray = dataManager.businesses;
    if (locationView != nil) {
        
        //sets variable from custom object to object at the index
        BusinessNfo *info = [[DataManager sharedDataManager].businesses objectAtIndex:indexPath.row];
        
        //passing of location name and coordinates values to locationView
        locationView.nameOfBusiness = [[selectArray objectAtIndex:indexPath.row]locationName];
        locationView.businessLocation = [[selectArray objectAtIndex:indexPath.row]actualLocation];
        
        [self presentViewController:locationView animated:true completion:nil];
        
        
        locationView.businessInfo = info;
    }
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;//1 section in tabel view
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        NSLog(@"row=%d", indexPath.row);
        DataManager *dataManager = [DataManager sharedDataManager];//setting variable
        
        NSMutableArray *deletionArray = dataManager.businesses;//creating array to hold data in singleton
        
        [deletionArray removeObjectAtIndex:indexPath.row];//deletes cell at index
        
        //[buisnesses removeObjectAtIndex:indexPath.row];
        [buisnessTableView deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}
-(IBAction)editClick:(id)sender
{
    
    //toggles edit/done button click
    UIButton *button = (UIButton*)sender;
    
    if(button.tag == 0)
{
    doneButn.hidden = NO;
    editButn.hidden = YES;
    [buisnessTableView setEditing:true];
    
}else if (button.tag == 1)
{
    doneButn.hidden = YES;
    editButn.hidden = NO;
    [buisnessTableView setEditing:false];
}
    
    
}


@end
