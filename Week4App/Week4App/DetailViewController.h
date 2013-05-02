//
//  DetailViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/29/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "locationNfo.h"
@interface DetailViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    
    NSString *locationInfo;
    NSString *weatherData;
    IBOutlet UITextView *detailTextView;
    IBOutlet UILabel *locationLabel;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *urlConnection;
    NSMutableData *requestData;
  
     NSInteger numItems;
     NSMutableArray *weather;
    
    
}
-(void)getXML:(NSString*)xml;
-(IBAction)back:(id)sender;
@property (strong) NSString *locationInfo;
@property (strong) NSString *weatherData;
@property BOOL parseController;
@property NSMutableString *elementValue;
@property (strong) IBOutlet UITextView *detailTextView;
@property (nonatomic, strong)locationNfo *location;
@end
