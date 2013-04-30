//
//  FirstViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, NSURLConnectionDataDelegate, NSXMLParserDelegate>
{
    NSInteger numItems;
    IBOutlet UITableView *infoTable;
    NSMutableArray *locations;
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *urlConnection;
    NSMutableData *requestData;
    NSMutableArray *weather;
    NSString *nameStr;
    
}
-(IBAction)onClick:(id)sender;

@end
