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

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize locationInfo,weatherData,detailTextView,elementValue,parseController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    numItems = 0;
    
    weather = [[NSMutableArray alloc]init];
    
   
    
     
    
    NSString *newInfo = [NSString stringWithFormat:@"%@ %@ %@",_location.city,_location.state,_location.country];
    detailTextView.text = newInfo;
     
    
    NSLog(@"%@",_location);
    
 [self getXML:_location.urlz];
    [self getXML:_location.city];
    [self getXML:_location.text];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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
    
    if (data != nil) {
        if (requestData) {
            [requestData appendData:data];
        }else {
            requestData = [data mutableCopy];
        }
    }
    
}



//when all data comes from request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    
   
    
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding:NSASCIIStringEncoding];
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
    
    elementValue = [[NSMutableString alloc] init];
    
    
    
    if ([elementName isEqualToString:@"rss"]) {
        NSString *xmlDetails = [attributeDict valueForKey:@"xmlns:yweather"];
        
        if (xmlDetails != nil)
        {
            
            numItems = [xmlDetails intValue];
        }
        
    }
    if ([elementName isEqualToString:@"yweather:location"])
        
    {
        
        
        NSString *locationCity = [attributeDict valueForKey:@"city"];
        NSString *locationState = [attributeDict valueForKey:@"region"];
        NSString *locationCountry = [attributeDict valueForKey:@"country"];
        NSString *API = [attributeDict valueForKey:@"link"];
        
        
        //NSLog(@"%@",locationState);
        locationNfo *item = [[locationNfo alloc]initWithName:locationCity locationState:locationState country:locationCountry urlz:API];
        
        if (item != nil) {
            
            [weather addObject:item];
            
           // NSLog(@"%@",weather);
        }
    }
    if ([elementName isEqualToString:@"yweather:condition"])
    {
        
         NSString *locationText = [attributeDict valueForKey:@"text"];
         NSString *locationTemp = [attributeDict valueForKey:@"temp"];
        NSString *locationCode = [attributeDict valueForKey:@"code"];
         NSString *locationDate = [attributeDict valueForKey:@"date"];
        
        locationNfo *add = [[locationNfo alloc]initWithName:locationText locationState:locationTemp country:locationCode urlz:locationDate];
        
        [weather addObject:add];
        NSLog(@"%@",weather);
        
       
        
    }
    
    
    
    
    
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if (parseController == false)
    {
        parseController = true;
        if (elementValue != nil) {
            // init the ad hoc string with the value
            elementValue = [[NSMutableString alloc] initWithString:string];
        } else {
            // append value to the ad hoc string
            [elementValue appendString:string];
        }
    }
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

@end
