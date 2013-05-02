//
//  DetailViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "locationNfo.h"
#import "SecondViewController.h"
@interface DetailViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate,xmlViewer>
{
    
    NSString *locationInfo;
    //NSMutableDictionary *weatherDict;
    
    //outlets
    IBOutlet UILabel *cityLabel;
    IBOutlet UILabel *stateLabel;
    IBOutlet UILabel *tempLabel;
    IBOutlet UILabel *dateLabel;
    IBOutlet UILabel *locationLabel;
    IBOutlet UILabel *conditionLabel;
    
    //strings for holding parsed data
    NSString *locationCondtion;
    NSString *locationTemp;
    NSString *locationDate;
    NSString *locationCity;
    
    //url data
    NSURLRequest *request;
    NSString *locationState;
    NSURL *url;
    NSURLConnection *urlConnection;
    NSMutableData *requestData;
    NSString *requestString;
    
    NSInteger numItems;
    NSMutableArray *weather;
    
    
}
//parser method 
-(void)getXML:(NSString*)xml;


-(IBAction)back:(id)sender;
//properties
@property NSString *requestString;
@property (strong) NSString *locationInfo;
@property (strong) NSString *weatherData;
@property NSMutableArray *weather;
@property BOOL parseController;
@property NSMutableString *elementValue;
@property (strong) IBOutlet UITextView *detailTextView;
@property (nonatomic, strong)locationNfo *location;
@end
