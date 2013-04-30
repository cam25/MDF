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
@interface FirstViewController ()

@end

@implementation FirstViewController

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
    
    numItems = 0;
    
    weather = [[NSMutableArray alloc]init];
    NSData *xmlData = [self GetfileDataFromFile:@"index.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc]initWithData:xmlData];
    
    if (parser != nil) {
        
        [parser setDelegate:self];
        [parser parse];
    }
    
    
    url = [[NSURL alloc]initWithString:@"http://weather.yahooapis.com/forecastrss?w=2442047&u=cl"];
    request = [[NSURLRequest alloc] initWithURL:url];
    
    if (request != nil) {
        
        urlConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        requestData = [NSMutableData data];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    //parsing 
    if ([elementName isEqualToString:@"rss"]) {
        NSString *xmlDetails = [attributeDict valueForKey:@"xmlns:yweather"];
        
        if (xmlDetails != nil)
        {
            
            numItems = [xmlDetails intValue];
        }
        
    }
        else if ([elementName isEqualToString:@"yweather:location"])
            
        {
            NSString *locationCity = [attributeDict valueForKey:@"city"];
            NSString *locationState = [attributeDict valueForKey:@"region"];
            NSString *locationCountry = [attributeDict valueForKey:@"country"];
        
            
            
            NSLog(@"%@",locationState);
            locationNfo *item = [[locationNfo alloc]initWithName:locationCity locationState:locationState country:locationCountry];
            
            if (item != nil) {
                [weather addObject:item];
                NSLog(@"%@",weather);
            }
        }
    else if ([elementName isEqualToString:@"yweather"])
    {
        NSString *locationText = [attributeDict valueForKey:@"text"];
        NSString *locationTemp = [attributeDict valueForKey:@"temp"];
        NSString *locationDate = [attributeDict valueForKey:@"date"];
        
      
        
        
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


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        
    }
    
   
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    
    
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
