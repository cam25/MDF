//
//  FirstViewController.m
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "FirstViewController.h"
#import "locationNfo.h"
#import "weatherData.h"
#import "DataManager.h"
#import "DetailViewController.h"


@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize areaString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    
  
    locations =[[NSMutableArray alloc]init];

    //locationNfo *location1 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2502265"];

    
    locationNfo *location1 = [[locationNfo alloc]initWithName:@"Sunnyvale" locationState:@"CA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2502265"];
    locationNfo *location2 = [[locationNfo alloc]initWithName:@"Landover" locationState:@"MD" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2436202&u=cl"];
    locationNfo *location3 = [[locationNfo alloc]initWithName:@"Philadelphia" locationState:@"PA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2471217&u=cl"];
    locationNfo *location4 = [[locationNfo alloc]initWithName:@"Baton Rouge" locationState:@"LA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2359991&u=cl"];
    locationNfo *location5 = [[locationNfo alloc]initWithName:@"Denver" locationState:@"CO" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2391279&u=cl"];
    locationNfo *location6 = [[locationNfo alloc]initWithName:@"Boston" locationState:@"MA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2367105&u=cl"];
    locationNfo *location7 = [[locationNfo alloc]initWithName:@"Houston" locationState:@"TX" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=12590119&u=cl"];
    locationNfo *location8 = [[locationNfo alloc]initWithName:@"Seattle" locationState:@"WA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2490383&u=cl"];
    locationNfo *location9 = [[locationNfo alloc]initWithName:@"Chicago" locationState:@"IL" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2379574&u=cl"];
    locationNfo *location10 = [[locationNfo alloc]initWithName:@"Trenton" locationState:@"NJ" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2507854&u=cl"];
    
    
    
    [locations addObject:location1];
    [locations addObject:location2];
    [locations addObject:location3];
    [locations addObject:location4];
    [locations addObject:location5];
    [locations addObject:location6];
    [locations addObject:location7];
    [locations addObject:location8];
    [locations addObject:location9];
    [locations addObject:location10];
    
    //NSLog(@"%@",[locations objectAtIndex:0]);
    
    //locationNfo *location2 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2436202&u=cl"];
    //locationNfo *location3 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2471217&u=cl"];
    //locationNfo *location4 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=56747312&u=cl"];
    //locationNfo *location5 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2391279&u=cl"];
    //locationNfo *location6 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2367105&u=cl"];
    //locationNfo *location7 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=12590119&u=cl"];
    //locationNfo *location8 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2490383&u=cl"];
    //locationNfo *location9 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2379574&u=cl"];
    //locationNfo *location10 = [[locationNfo alloc]initWithName2:@"http://weather.yahooapis.com/forecastrss?w=2507854&u=cl"];
/*
    DataManager *manager = [DataManager sharedDataManager];
    if (manager != nil) {
        NSMutableArray *myArray = manager.myArray;
        
        if (myArray != nil) {
            [myArray addObject:location1];
            [myArray addObject:location2];
            [myArray addObject:location3];
            [myArray addObject:location4];
            [myArray addObject:location5];
            [myArray addObject:location6];
            [myArray addObject:location7];
            [myArray addObject:location8];
            [myArray addObject:location9];
            [myArray addObject:location10];
            
            
        }
    }
    
*/
    
    

    //locations = [[NSMutableArray alloc]initWithObjects:@"http://weather.yahooapis.com/forecastrss?w=2502265",@"http://weather.yahooapis.com/forecastrss?w=2436202&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2471217&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2359991&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2391279&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2367105&u=cl",@"http://weather.yahooapis.com/forecastrss?w=12590119&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2490383&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2379574&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2507854&u=cl", nil];
    
    cities = [[NSMutableArray alloc]initWithObjects:@"Sunnyvale, CA",@"Landover, MD",@"Philadelphia, PA",@"Baton Rouge, LA",@" Denver, CO",@"Boston, MA",@"Houston, TX",@"Seattle, WA",@"Chicago, IL",@"Trenton, NJ", nil];
    

   
    
   // NSLog(@"%@",locations);
    
  
   
    
    
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
    
   
    return [locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        
    }
    cell.textLabel.text = [[locations objectAtIndex:indexPath.row]city];
    
    
    
    
   
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailView = [[DetailViewController alloc]initWithNibName:@"DetailView" bundle:nil];
    if (detailView != nil) {
        
        locationNfo *info = [locations objectAtIndex:indexPath.row];
        detailView.location = info;
       // detailView.locationInfo = [locations objectAtIndex:indexPath.row];
       
        //detailView.detailTextView = [NSString stringWithFormat:@"%@",[weather objectAtIndex:indexPath.row];
      
         [self presentViewController:detailView animated:true completion:nil];
    }
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;//1 section in tabel view
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
   
}



-(IBAction)onClick:(id)sender
{
    UIBarButtonItem *item = (UIBarButtonItem*)sender;
    if (item.tag == 0) {
      
        NSLog(@"This is EDIT Button");
        
        
    }else if (item.tag == 1)
    {
        NSLog(@"This is DLT Button");
    }
}


@end
