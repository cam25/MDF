//
//  DetailViewController.m
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import "DetailViewController.h"
#import "FirstViewController.h"
#import "locationNfo.h"
#import "weatherData.h"
#import "SecondViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize locationInfo,detailTextView,elementValue,parseController,weather,requestString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    //method call - passing the url from the location object 
    [self getXML:_location.urlz];
    weather = [[NSMutableArray alloc]init];
}

- (void)viewDidLoad
{
    
    numItems = 0;
    NSLog(@"%@",_location);
    
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
}

//custom parser method which allows the xml to recieve a string and holds the value of _location.urlz
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
    
    if (data != nil) {
        if (requestData) {
            [requestData appendData:data];
            
        }else {
            requestData = [data mutableCopy];
        }
    }
    /*
    weatherData *w = [[weatherData alloc]init];
    [w setCity:locationCity];
    [w setDate:locationDate];
    [w setTemp:locationTemp];
    [w setState:locationState];
    [weather addObject:w];
    NSLog(@"Count: %i",weather.count);
     */
}



//when all data comes from request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
    
    
    requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil) {
        
        //get the path to the application documents directory
        NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        
        NSString *documentsDirectory = [paths objectAtIndex:0];
        // NSLog(@"%@",documentsDirectory);
        if (documentsDirectory != nil) {
            NSString *fullPath = [[NSString alloc]initWithFormat:@"%@/%@",documentsDirectory, @"index.xml"];
            if (fullPath != nil) {
                [requestData writeToFile:fullPath atomically:true];
            }
        }
        // NSLog(@"%@",requestString);
    }
    NSData *xmlData = [self GetfileDataFromFile:@"index.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:xmlData];
    
    if (parser != nil) {
        
        [parser setDelegate:self];
        [parser parse];
    }
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    //parsing

    //if elementName is equal to the key passed in 
    if ([elementName isEqualToString:@"rss"]) {
        NSString *xmlDetails = [attributeDict valueForKey:@"xmlns:yweather"];
        
        if (xmlDetails != nil)
        {
            
            numItems = [xmlDetails intValue];
        }
        
    }
    if ([elementName isEqualToString:@"yweather:location"])
        
    {
        
        //sets strings of locationCity/locationState to hold the attribute of parsed data from xml to pass to detail view
        locationCity = [attributeDict valueForKey:@"city"];
        locationState = [attributeDict valueForKey:@"region"];
        
        //sets label to parsed data
        cityLabel.text = locationCity;
        stateLabel.text = locationState;
        
        NSLog(@"city: %@, region: %@",locationCity,locationState);
        
    }
    if ([elementName isEqualToString:@"yweather:condition"])
    {
        
        locationTemp = [attributeDict valueForKey:@"temp"];
        locationDate = [attributeDict valueForKey:@"date"];
        locationCondtion = [attributeDict valueForKey:@"text"];
        
        dateLabel.text = locationDate;
        tempLabel.text = locationTemp;
        conditionLabel.text = locationCondtion;
        
        NSLog(@"temp: %@, date: %@, condition: %@",locationTemp, locationDate,locationCondtion);
        
    }





}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    
}




-(NSData*)GetfileDataFromFile:(NSString*)filename
{
    NSString *filePath = nil;
    
    //create the filemanager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    //create the fullpath to the data file
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    //does the path and the fileName Exist?
    if ([fileManager fileExistsAtPath:filePath])
    {
        //returns back the NSData for the file
        return [NSData dataWithContentsOfFile:filePath];
    }
    return nil;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)back:(id)sender
{
    UIButton *button = (UIButton *)sender;
    
    if (button != nil)
    {
        // dismiss the details view and return to the table view
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

- (NSString *)xmlDataString
{
    return requestString;
}

@end
