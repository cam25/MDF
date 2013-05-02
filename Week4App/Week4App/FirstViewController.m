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
#import "SecondViewController.h"


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

    
    locationNfo *location1 = [[locationNfo alloc]initWithName:@"Sunnyvale" locationState:@"CA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2502265&u=f"];
    locationNfo *location2 = [[locationNfo alloc]initWithName:@"Landover" locationState:@"MD" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2436202&u=f"];
    locationNfo *location3 = [[locationNfo alloc]initWithName:@"Philadelphia" locationState:@"PA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2471217&u=f"];
    locationNfo *location4 = [[locationNfo alloc]initWithName:@"Baton Rouge" locationState:@"LA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2359991&u=f"];
    locationNfo *location5 = [[locationNfo alloc]initWithName:@"Denver" locationState:@"CO" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2391279&u=f"];
    locationNfo *location6 = [[locationNfo alloc]initWithName:@"Boston" locationState:@"MA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2367105&u=f"];
    locationNfo *location7 = [[locationNfo alloc]initWithName:@"Houston" locationState:@"TX" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=12590119&u=f"];
    locationNfo *location8 = [[locationNfo alloc]initWithName:@"Seattle" locationState:@"WA" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2490383&u=f"];
    locationNfo *location9 = [[locationNfo alloc]initWithName:@"Chicago" locationState:@"IL" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2379574&u=f"];
    locationNfo *location10 = [[locationNfo alloc]initWithName:@"Trenton" locationState:@"NJ" country:@"USA" urlz:@"http://weather.yahooapis.com/forecastrss?w=2507854&u=f"];
    
    
    
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
    
  
    
    

    //locations = [[NSMutableArray alloc]initWithObjects:@"http://weather.yahooapis.com/forecastrss?w=2502265",@"http://weather.yahooapis.com/forecastrss?w=2436202&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2471217&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2359991&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2391279&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2367105&u=cl",@"http://weather.yahooapis.com/forecastrss?w=12590119&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2490383&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2379574&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2507854&u=cl", nil];
    
   // cities = [[NSMutableArray alloc]initWithObjects:@"Sunnyvale, CA",@"Landover, MD",@"Philadelphia, PA",@"Baton Rouge, LA",@" Denver, CO",@"Boston, MA",@"Houston, TX",@"Seattle, WA",@"Chicago, IL",@"Trenton, NJ", nil];
    

   
    
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
    
   //returns count of locations
    return [locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        
    }
    
    //shows city for each cell
    cell.textLabel.text = [[locations objectAtIndex:indexPath.row]city];
    
    
    
    
   
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailView = [[DetailViewController alloc]initWithNibName:@"DetailView" bundle:nil];
    if (detailView != nil) {
        
 
    
        //sets info variable to pass my objects index at indexPath.row
        locationNfo *info = [locations objectAtIndex:indexPath.row];
        detailView.location = info;
      
       
        
      
         [self presentViewController:detailView animated:true completion:nil];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;//1 section in tabel view
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        NSLog(@"row=%d", indexPath.row);
    
        
        [locations removeObjectAtIndex:indexPath.row];//deletes cell at index
        
        //[buisnesses removeObjectAtIndex:indexPath.row];
        [infoTable deleteRowsAtIndexPaths:[NSMutableArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}



-(IBAction)onClick:(id)sender
{
    UIBarButtonItem *item = (UIBarButtonItem*)sender;
    if (item.tag == 0) {
        //toggles edit/done button click
        UIButton *button = (UIButton*)sender;
        
        if(button.tag == 0)
        {
         
            [infoTable setEditing:true];
            
        }
        NSLog(@"This is EDIT Button");
        
        
    }else if (item.tag == 1)
    {
        [infoTable setEditing:false];
        NSLog(@"This is DLT Button");
    }
}



@end
