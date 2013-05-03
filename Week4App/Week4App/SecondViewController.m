//
//  SecondViewController.m
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "SecondViewController.h"
#import "locationNfo.h"
#import "FirstViewController.h"
#import "DetailViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"RawXML", @"RawXML");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
- (void)viewDidAppear:(BOOL)animated
{
    // fetch the request string from the first tab
  
    //[self getXML:[locations objectAtIndex:0]];
 
    [super viewDidAppear:true];
}
					
- (void)viewDidLoad
{
    
    //array of locations to be looped through and output to textview
     locations = [[NSMutableArray alloc]initWithObjects:@"http://weather.yahooapis.com/forecastrss?w=2502265",@"http://weather.yahooapis.com/forecastrss?w=2436202&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2471217&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2359991&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2391279&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2367105&u=cl",@"http://weather.yahooapis.com/forecastrss?w=12590119&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2490383&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2379574&u=cl",@"http://weather.yahooapis.com/forecastrss?w=2507854&u=cl", nil];
    
    //loops through locations 
    for (int i=0; i <= [locations count] - 1; i++){
        [self getXML:[locations objectAtIndex:i]];//parses the xml strings at index
    }
  
    
    //server request
    request = [[NSURLRequest alloc] initWithURL:url];
    if(request != nil)
    {
      
        urlConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        requestData = [NSMutableData data];
    }
    
    NSString *rawText = [delegate xmlDataString];
    
    // set the textView text to the fetched in request string
    xmlView.text = rawText;
    NSLog(@"%@",rawText);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)getXML:(NSString*)xml
{
    url = [[NSURL alloc]initWithString:xml];
    request = [[NSURLRequest alloc] initWithURL:url];
    NSLog(@"%@",xml);
    if (request != nil) {
        
        urlConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        requestData = [NSMutableData data];
    }
    
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{

    if (data !=nil)
    {
        //append data to requestData
        [requestData appendData:data];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if(requestString != nil)
    {

       
       // NSLog(@"%@", requestString);
        
        xmlView.text = requestString;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
