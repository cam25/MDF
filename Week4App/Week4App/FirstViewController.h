//
//  FirstViewController.h
//  Week4App
//
//  Created by Cameron Mozie on 4/28/13.
//  Copyright (c) 2013 Cameron Mozie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface FirstViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
   //tableview
    IBOutlet UITableView *infoTable;
   
    //array of locations
    NSMutableArray *locations;
   
   
    //NSMutableArray *cities;

}
@property NSString *areaString;
-(IBAction)onClick:(id)sender;

@end
